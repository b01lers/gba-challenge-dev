#include <tonc.h>
#include <stdio.h>
#include <string.h>

#include "juni.h"
//#include "tileset.h"
#include "tileset.h"

#define OBJ_BUFFER_LEN 128
#define X_CENTER 96
#define Y_CENTER 32
#define FLIPH(attr, horz) ((horz == 0) ? attr : (horz == 1) ? attr : attr ^ ATTR1_HFLIP)
#define X_COL_LUT_IDX(curx_px) ()
#define Y_COL_LUT_IDX(cury_px) ()
#define TILE_IDX(val) ((val >> 3))
#define CLAMP8(val) ((val & 0xfffffff8))
#define TILE_W 8
#define TILE_H 8
// Calculate midpoint of sprite's last row contacting a non-blanked tile in the map
#define ON_SURFACE_BOTTOM(x, y, w, h) ((tilesetMap[((TILE_IDX((y + h)) * 32) + (TILE_IDX((x + (w >> 2)))))]) > 0x1)
// Calculate the midpoint of a sprite's top row contacting a non-blanked tile in the map
#define ON_SURFACE_TOP(x, y, w, h) ((tilesetMap[((TILE_IDX(y) * 32) + (TILE_IDX((x + (w >> 2)))))]) > 0x1)
#define CHEAT_LEN 12

#define IN_TILE_RANGE(tilex, tiley, tilesx, tilesy, posx, posy) ((posx >= (tilex * TILE_W)) && (posx <= ((tilex * TILE_W) + (tilesx * TILE_W))) && (posy >= (tiley * TILE_H)) && (posy <= ((tiley * TILE_H) + (tilesy * TILE_H))))

OBJ_ATTR obj_buffer[OBJ_BUFFER_LEN];
OBJ_AFFINE * obj_aff_buffer = (OBJ_AFFINE *) obj_buffer;
int cheat_input[CHEAT_LEN + 1] = {0};
int cheat_mode = 0;
int cheat_entry_idx = 0;
#define KEYS_SZ 10
int KEYS[] = {KEY_START, KEY_SELECT, KEY_A, KEY_B, KEY_UP, KEY_DOWN, KEY_LEFT, KEY_RIGHT, KEY_R, KEY_L};
// Cheat is start select a b right left right left down down up up
int cheatcode[] = {KEY_START, KEY_SELECT, KEY_A, KEY_B, KEY_UP, KEY_DOWN, KEY_UP, KEY_DOWN, KEY_LEFT, KEY_RIGHT, KEY_LEFT, KEY_RIGHT};
char flag[28];
const char * playerstr = "typedef struct player{int height;int width;int x;int y;int move_speed;int gravity_timer;int last_dir;int jump_per_px;void (*move)(struct player *);OBJ_ATTR * sprite;} player;";


typedef struct player {
    int height;
    int width;
    int x;
    int y;
    int move_speed;
    int gravity_timer;
    int last_dir;
    int jump_per_px;
    void (*move)(struct player *);
    OBJ_ATTR * sprite;
} player;

// Calculate collisions based on y, then if y is a possible collide line, check x
// Use tilesetMap as LUT to generate


void intro(void) {

    REG_DISPCNT = DCNT_MODE0 | DCNT_BG0;

    tte_init_se_default(0, BG_CBB(0) | BG_SBB(31));
    tte_init_con();

    tte_write("#{P:64,64");
    tte_write("Welcome, Juni.");
    tte_write("#{P:54,74");
    tte_write("Begin Mission in:");

    REG_TM2D = -0x4000; // 0x4000 ticks till overflow
    REG_TM2CNT = TM_FREQ_1024;
    REG_TM3CNT = TM_ENABLE | TM_CASCADE;
    u32 sec = -1;
    u32 until = 10;

    REG_TM2CNT ^= TM_ENABLE;

    while ((sec % 60) != until) {
        vid_vsync();
        if(REG_TM3D != sec)
        {
            sec= REG_TM3D;
            tte_printf("#{P:112,92}%02d", until - (sec % 60));
        }
    }
    return;
}

char * decrypt_flag(void) {
    char tmpflag[28];
    const unsigned short * fraw = &tilesetPal[64];
    const char * flag_raw = (const char *) fraw;
    for (int i = 0; i < 28; i++) {
        if (!(i % 2)) {
            flag[i + 1] = flag_raw[i];
        } else {
            flag[i - 1] = flag_raw[i];
        }
    }
    for (int i = 0; i < 28; i++) {
        if (i == 0) {
            tmpflag[i] = ((flag[i] ^ 0x7a) + 40);
        } else {
            tmpflag[i] = ((flag[i] ^ flag[i - 1]) + 40);
        }
    }
    memcpy(flag, tmpflag, 28 * sizeof(char));
    return flag;
}

void you_won(void) {
    REG_DISPCNT = DCNT_MODE0 | DCNT_BG0;

    tte_init_se_default(0, BG_CBB(0) | BG_SBB(31));
    tte_init_con();

    tte_erase_screen();

    tte_write("#{P:64,64}");
    tte_write("MISSION SUCCESS!");
    tte_printf("#{P:44,74}FLAG: %s", decrypt_flag());

    while(1);
    return;
}

void juni_move(player * juni) {
    juni->x += (((juni->x < SCREEN_WIDTH - juni->width) && (juni->x > 0)) || ((key_tri_horz() < 0 && juni->x >= SCREEN_WIDTH - juni->width) || (key_tri_horz() > 0 && juni->x <= 0))) ? (juni->move_speed * key_tri_horz()) : 0;

    int on_surface_bottom = ON_SURFACE_BOTTOM(juni->x, juni->y, juni->width, juni->height);
    int on_surface_top = ON_SURFACE_TOP(juni->x, juni->y, juni->width, juni->height);

    // juni->y += 2 * key_tri_vert();
    if ((!on_surface_bottom && !juni->gravity_timer) || (on_surface_top && juni->gravity_timer)) { 
        // Fall with gravity if not on a surface and not jumping
        juni->y += 2;
    } else if (on_surface_bottom && key_tri_vert() == -1) {
        // Start a jump if we're on a surface and jump key was pressed
        juni->gravity_timer = 15;
    }
    if (juni->gravity_timer) {
        // Don't continue up if we hit a tile
        if (!on_surface_top) {
            juni->y -= juni->jump_per_px;
            juni->gravity_timer--;
        } else {
            juni->gravity_timer = 0;
        }
    }

    if (key_tri_horz() != 0 && key_tri_horz() != juni->last_dir) {
        // Flip the sprite if we're facing left
        juni->sprite->attr1 ^= ATTR1_HFLIP;
    }

    if (key_tri_horz() != 0) {
        // Set last direction to know if we need to flip sprite next frame
        juni->last_dir = key_tri_horz();
    }
}


void init_bg(void) {
    memcpy(pal_bg_mem, tilesetPal, tilesetPalLen);
    memcpy(&tile_mem[0][0], tilesetTiles, tilesetTilesLen);
    memcpy(&se_mem[30][0], tilesetMap, tilesetMapLen);
    REG_BG0CNT = BG_CBB(0) | BG_SBB(30) | BG_4BPP | BG_REG_64x32;
    REG_DISPCNT = 0;
    REG_DISPCNT |= DCNT_MODE0 | DCNT_BG0;
}

// Cheat is start select a b right left right left down up down up
int process_cheatcode(void) {
    if (key_hit(KEY_START)) {
        // Disable normal game
        cheat_mode = 1;
        // Clear cheat_input
        for (int i = 0; i < CHEAT_LEN; i++) {
            cheat_input[i] = 0;
        }
        cheat_entry_idx = 0;
        cheat_input[cheat_entry_idx++] = KEY_START;
    }

    /*
    0x04000000
        128:#define REG_KEYINPUT		*(vu16*)(REG_BASE+0x0130)
        REG BASE = ^^^kkk
    */

    if (cheat_mode == 1) {
        for (int i = 0; i < KEYS_SZ; i++) {
            // Add key to cheat if not the same as the last key hit
            if (key_hit(KEYS[i]) && (cheat_entry_idx == 0 || cheat_input[cheat_entry_idx - 1] != KEYS[i])) {
                cheat_input[cheat_entry_idx++] = KEYS[i];
            }
        }
        if (cheat_entry_idx > CHEAT_LEN) {
            cheat_entry_idx = 0;
            cheat_mode = 0;
            return 0;
        }
        for (int i = 0; i < CHEAT_LEN; i++) {
            if (cheat_input[i] != cheatcode[i]) {
                return 0;
            }
        }
        cheat_mode = 0;
        return 1;
    }
    return 0;

}

player init_player(void) {
    player juni;

    juni.sprite = &obj_buffer[0];
    juni.width = 16;
    juni.height = 16;
    juni.move_speed = 2;
    juni.x = X_CENTER;
    juni.y = Y_CENTER;
    juni.gravity_timer = 0;
    juni.last_dir = 1;
    juni.move = juni_move;
    juni.jump_per_px = 2;
    return juni;
}


void game_loop(void) {
    init_bg();
    memcpy(&tile_mem[4][0], juniTiles, juniTilesLen);
    memcpy(pal_obj_mem, juniPal, juniPalLen);

    oam_init(obj_buffer, OBJ_BUFFER_LEN);

    REG_DISPCNT |= DCNT_OBJ | DCNT_OBJ_1D;

    player juni = init_player();

    obj_set_attr(juni.sprite,
            ATTR0_SQUARE,
            ATTR1_SIZE_16,
            ATTR2_PALBANK(0) | 0);

    obj_set_pos(juni.sprite, juni.x, juni.y);
    juni.sprite->attr2 = ATTR2_BUILD(0, 0, 0);

    while (1) {
        vid_vsync();
        key_poll();

        if(process_cheatcode()) {
            juni.jump_per_px = 6;

        }

        if (!cheat_mode) {
            juni.move(&juni);
        }

        obj_set_pos(juni.sprite, juni.x, juni.y);

        if (IN_TILE_RANGE(24, 0, 2, 2, juni.x, juni.y)) {
            you_won();

        }

        oam_copy(oam_mem, obj_buffer, 1);
    }

    return;
}

int main() {
    intro();
    game_loop();
    while (1);
}

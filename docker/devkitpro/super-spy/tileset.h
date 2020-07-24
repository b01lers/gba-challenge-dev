
//{{BLOCK(tileset)

//======================================================================
//
//	tileset, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 7 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 448 + 2048 = 3008
//
//	Time-stamp: 2020-07-18, 11:45:58
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TILESET_H
#define GRIT_TILESET_H

#define tilesetTilesLen 448
extern const unsigned short tilesetTiles[224];

#define tilesetMapLen 2048
extern const unsigned short tilesetMap[1024];

#define tilesetPalLen 512
extern const unsigned short tilesetPal[256];

#endif // GRIT_TILESET_H

//}}BLOCK(tileset)

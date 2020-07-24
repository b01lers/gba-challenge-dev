
//{{BLOCK(sdtileset)

//======================================================================
//
//	sdtileset, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 17 tiles (t|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 544 + 2048 = 3104
//
//	Time-stamp: 2020-07-20, 11:03:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SDTILESET_H
#define GRIT_SDTILESET_H

#define sdtilesetTilesLen 544
extern const unsigned short sdtilesetTiles[272];

#define sdtilesetMapLen 2048
extern const unsigned short sdtilesetMap[1024];

#define sdtilesetPalLen 512
extern const unsigned short sdtilesetPal[256];

#endif // GRIT_SDTILESET_H

//}}BLOCK(sdtileset)

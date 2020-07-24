
//{{BLOCK(shot)

//======================================================================
//
//	shot, 32x32@4, 
//	+ palette 32 entries, not compressed
//	+ 16 tiles not compressed
//	+ regular map (flat), not compressed, 1x1 
//	Metatiled by 4x4
//	Total size: 64 + 512 + 32 + 2 = 610
//
//	Time-stamp: 2020-07-05, 16:13:56
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SHOT_H
#define GRIT_SHOT_H

#define shotTilesLen 512
extern const unsigned int shotTiles[128];

#define shotMetaTilesLen 32
extern const unsigned int shotMetaTiles[8];

#define shotMetaMapLen 2
extern const unsigned int shotMetaMap[1];

#define shotPalLen 64
extern const unsigned int shotPal[16];

#endif // GRIT_SHOT_H

//}}BLOCK(shot)

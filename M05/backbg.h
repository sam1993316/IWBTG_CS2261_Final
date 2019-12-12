
//{{BLOCK(backbg)

//======================================================================
//
//	backbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 98 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3136 + 2048 = 5696
//
//	Time-stamp: 2019-11-26, 14:54:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BACKBG_H
#define GRIT_BACKBG_H

#define backbgTilesLen 3136
extern const unsigned short backbgTiles[1568];

#define backbgMapLen 2048
extern const unsigned short backbgMap[1024];

#define backbgPalLen 512
extern const unsigned short backbgPal[256];

#endif // GRIT_BACKBG_H

//}}BLOCK(backbg)

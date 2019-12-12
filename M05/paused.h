
//{{BLOCK(paused)

//======================================================================
//
//	paused, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 93 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2976 + 2048 = 5536
//
//	Time-stamp: 2019-12-05, 20:28:15
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSED_H
#define GRIT_PAUSED_H

#define pausedTilesLen 2976
extern const unsigned short pausedTiles[1488];

#define pausedMapLen 2048
extern const unsigned short pausedMap[1024];

#define pausedPalLen 512
extern const unsigned short pausedPal[256];

#endif // GRIT_PAUSED_H

//}}BLOCK(paused)

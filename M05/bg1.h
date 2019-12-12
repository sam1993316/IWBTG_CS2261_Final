
//{{BLOCK(bg1)

//======================================================================
//
//	bg1, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 225 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7200 + 2048 = 9760
//
//	Time-stamp: 2019-12-05, 16:56:45
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG1_H
#define GRIT_BG1_H

#define bg1TilesLen 7200
extern const unsigned short bg1Tiles[3600];

#define bg1MapLen 2048
extern const unsigned short bg1Map[1024];

#define bg1PalLen 512
extern const unsigned short bg1Pal[256];

#endif // GRIT_BG1_H

//}}BLOCK(bg1)

#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "start.h"
#include "bg1.h"
#include "bg2.h"
#include "bg3.h"
#include "backbg.h"
#include "spritesheet.h"
#include "gameover.h"
#include "paused.h"
#include "instruction.h"
#include "win.h"
#include "paused.h"
#include "sound.h"
#include "startSong.h"
#include "gameSong.h"
#include "loseSound.h"
/*
    -Get the golden heart by going through 3 levels to win the game
    -Still need to figure out a proper win condition
    -Game sequence:
        level1: dodge all apples and go to the platform at left
        level2: find the invisible platform and climb the cloud to reach level3
        level3: go to right and descent to the platform unreachable normally on level 1
        win the game by touching the yellow heart
    -Cheats are enabled with B press toggle on/off (no indication on screen but it works)
        Level 1 slows apple down
        Level 2 makes you spawn on platform instead of starting over
        Level 3 cheat also slows apple down
    Update notes:
    -Polished backgroudns to look more natural
    
*/ 
// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToInstruction();
void instruction();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

int seed;
// States
enum {START, INSTRUCTION, GAME1, GAME2, GAME3, PAUSE, WIN, LOSE};
int state;
// Sound structs
SOUND soundA;
SOUND soundB;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Surrogated Variable
unsigned short hOff;




int main() {

    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = BUTTONS;

        switch(state) {
            case START:
                start();
                break;
            case INSTRUCTION:
                instruction();
                break;
            case GAME1:
                game1();
                break;
            case GAME2:
                game2();
                break;
            case GAME3:
                game3();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
	}
}

// Initialize the game on first launch
void initialize() {
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);

    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE; 

    buttons = BUTTONS;

    // Call the two setup functions for sounds and interrupts
	setupSounds();
	setupInterrupts();

    goToStart();
    
}

void goToStart() {
    stopSound();
    playSoundA(startSong, STARTSONGLEN, STARTSONGFREQ, 1);
    // start screen for the game
    DMANow(3, startPal, PALETTE, 256);
    DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen / 2);
    DMANow(3, startMap, &SCREENBLOCK[28], startMapLen);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);
    state = START;
}

// Runs every frame of the start state
void start() {
    seed++;
    // Lock the framerate to 60 fps
    
    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);
        goToInstruction();

    }
}
// Set up the instruction screen
void goToInstruction() {
    DMANow(3, instructionPal, PALETTE, 256);
    DMANow(3, instructionTiles, &CHARBLOCK[0], instructionTilesLen / 2);
    DMANow(3, instructionMap, &SCREENBLOCK[28], instructionMapLen);
    
    state = INSTRUCTION;
}
void instruction() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame1();
        srand(seed);
        initGame();
        stopSound();
        playSoundB(gameSong, GAMESONGLEN, GAMESONGFREQ, 1);
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}
// Sets up the game state
void goToGame1() {
    DMANow(3, bg1Pal, PALETTE, 256);
    DMANow(3, bg1Tiles, &CHARBLOCK[0], bg1TilesLen / 2);
    DMANow(3, bg1Map, &SCREENBLOCK[28], bg1MapLen);
    
    state = GAME1;
}

// Runs every frame of the game state
void game1() {

    updateGame();
    drawGame();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (playerLife == 0)
        goToLose();
    else if (playerLife == 2) 
        goToWin();
    else if (currLevel == 2)
        goToGame2();

}

void goToGame2() {
    
    DMANow(3, bg2Tiles, &CHARBLOCK[0], bg2TilesLen / 2);
    DMANow(3, bg2Map, &SCREENBLOCK[28], bg2MapLen);
    
    DMANow(3, backbgTiles, &CHARBLOCK[1], backbgTilesLen / 2);
    DMANow(3, backbgMap, &SCREENBLOCK[30], backbgMapLen/2);
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL;

    DMANow(3, backbgPal, PALETTE, 256);
    DMANow(3, bg2Pal, PALETTE, 16);

    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;

    hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);
    state = GAME2;
}

// Runs every frame of the game state
void game2() {
    
    hOff++;
    REG_BG1HOFF = hOff;
    
    updateGame();
    drawGame();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (playerLife == 0)
        goToLose();
    else if (currLevel == 3)
        goToGame3();
    else if (currLevel == 1) 
        goToGame1();
    
}


void goToGame3() {

    DMANow(3, bg3Pal, PALETTE, 16);
    DMANow(3, bg3Tiles, &CHARBLOCK[0], bg3TilesLen / 2);
    DMANow(3, bg3Map, &SCREENBLOCK[28], bg3MapLen);
    hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);
    state = GAME3;
}

// Runs every frame of the game state
void game3() {

    updateGame();
    drawGame();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (playerLife == 0)
        goToLose();
    else if (currLevel == 1) {
        goToGame1();
    }
}
// Sets up the pause state
void goToPause() {
    pauseSound();
    waitForVBlank();
    DMANow(3, pausedPal, PALETTE, 16);
    DMANow(3, pausedTiles, &CHARBLOCK[0], pausedTilesLen / 2);
    DMANow(3, pausedMap, &SCREENBLOCK[28], pausedMapLen);
    hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
    {
        unpauseSound();
        if (currLevel == 1)
        {
            goToGame1();
        } else if (currLevel == 2) 
        {
            goToGame2();
        } else if (currLevel == 3)
        {
            goToGame3();
        }
        
    } else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
    
    DMANow(3, winPal, PALETTE, 16);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen / 2);

    state = WIN;
}

// Runs every frame of the win state
void win() {

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
		playSoundA(startSong,STARTSONGLEN,STARTSONGFREQ, 1);
        goToStart();
    }
}
       
// Sets up the lose state
void goToLose() {
    stopSound();
    playSoundA(loseSound, LOSESOUNDLEN, LOSESOUNDFREQ, 0);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);

    DMANow(3, gameoverPal, PALETTE, 16);
    DMANow(3, gameoverTiles, &CHARBLOCK[0], gameoverTilesLen / 2);
    DMANow(3, gameoverMap, &SCREENBLOCK[28], gameoverMapLen);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}


#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "collisionmap.h"
#include "collisionmap2.h"
#include "collisionmap3.h"
#include "jumpSound.h"
// Variables
ANISPRITE apples[APPLECOUNT];
ANISPRITE stage3apples[APPLECOUNT - 2];
ANISPRITE player;
ANISPRITE heart;
int currLevel;
int playerLife;
enum
{
	BOSHYFRONT,
	BOSHYBACK,
	BOSHYRIGHT,
	BOSHYLEFT,
	BOSHYIDLE
};
OBJ_ATTR shadowOAM[128];
int appleSPD;
int level2Cheat;
int cheat = 0;
int rdel = (int)(1.0 * 256);
int jumping = 0;

// Initialize the game
void initGame()
{
	playerLife = 1;
	appleSPD = 2;
	currLevel = 1;
	level2Cheat = 0;
	initPlayer();
	initApple();
	initHeart();
}

// Updates the game each frame
void updateGame()
{
	updatePlayer();
	updateHeart();
	if (currLevel == 1)
	{
		for (int i = 0; i < APPLECOUNT; i++)
		{
			updateApple(&apples[i], i + 1);
		}
	}
	if (currLevel == 3)
	{
		for (int i = 0; i < APPLECOUNT - 2; i++)
		{
			updateApple2(&stage3apples[i], i + 7);
		}
	}
}

// Draws the game each frame
void drawGame()
{
	drawPlayer();
	drawHeart();
	if (currLevel == 1)
	{
		drawApple();
	}
	if (currLevel == 3)
	{
		drawApple2();
	}
	
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 128 * 4);

}

// Initialize the player
void initPlayer()
{
	player.row = 120 << 8;
	player.col = 50;
	player.rdel = rdel;
	player.cdel = 1;
	player.width = 16;
	player.height = 16;
	player.aniCounter = 0;
	player.aniState = BOSHYRIGHT;
	player.prevAniState = BOSHYIDLE;
	player.curFrame = 0;
	player.numFrames = 3;
}
// Handle every-frame actions of the player
void updatePlayer()
{
	// Toggle Cheat
	if (BUTTON_PRESSED(BUTTON_B))
		{
			if (level2Cheat == 0)
			{
				level2Cheat = 1;
			}
			else
			{
				level2Cheat = 0;
			}
			if (appleSPD == 2)
			{
				appleSPD = 1;
			}
			else
			{
				appleSPD = 2;
			}
		}
	if (currLevel == 1)
	{
		if (player.aniState != BOSHYIDLE)
		{
			player.prevAniState = player.aniState;
		}
		player.aniState = BOSHYIDLE;

		// Change animation every 20 frames
		if (player.aniCounter % 20 == 0)
		{
			if (player.curFrame < player.numFrames - 1)
			{
				player.curFrame++;
			}
			else
			{
				player.curFrame = 0;
			}
		}
		if (BUTTON_HELD(BUTTON_LEFT) && (collisionmapBitmap[OFFSET(player.col - 1, player.row >> 8, 240)] == WHITE) 
		&& (collisionmapBitmap[OFFSET(player.col - 1, (player.row >> 8) + player.height - 1, 240)] == WHITE) 
		&& (collisionmapBitmap[OFFSET(player.col - 1, (player.row >> 8) + player.height / 2, 240)] == WHITE))
		{
			player.aniState = BOSHYLEFT;
			player.col -= player.cdel;
		}
		if (BUTTON_HELD(BUTTON_RIGHT) && (collisionmapBitmap[OFFSET(player.col + player.width + 1, (player.row >> 8), 240)] == WHITE) 
		&& (collisionmapBitmap[OFFSET(player.col + player.width + 1, (player.row >> 8) + player.height - 1, 240)] == WHITE) 
		&& (collisionmapBitmap[OFFSET(player.col + player.width + 1, (player.row >> 8) + player.height / 2, 240)] == WHITE))
		{
			player.aniState = BOSHYRIGHT;
			player.col += player.cdel;
		}
		// jump
		if ((BUTTON_PRESSED(BUTTON_A) && !jumping))
		{
			playSoundA(jumpSound, JUMPSOUNDLEN, JUMPSOUNDFREQ, 0);

			jumping = 1;
			player.rdel = -rdel * 1.8;
			player.row += player.rdel;
		}
		
		if (collisionmapBitmap[OFFSET(player.col + 1, (player.row >> 8) + player.height + (player.rdel >> 8), 240)] == WHITE 
		&& collisionmapBitmap[OFFSET(player.col + player.width - 1, (player.row >> 8) + player.height + (player.rdel >> 8), 240)] == WHITE 
		&& collisionmapBitmap[OFFSET(player.col + player.width / 2, (player.row >> 8) + player.height + (player.rdel >> 8), 240)] == WHITE)
		{
			if (player.rdel <= 0) {
				if (collisionmapBitmap[OFFSET(player.col, (player.row >> 8) + (player.rdel >> 8) + 5, 240)] == BLACK 
				|| collisionmapBitmap[OFFSET(player.col + player.width, (player.row >> 8) + (player.rdel >> 8) + 5, 240)] == BLACK
				|| collisionmapBitmap[OFFSET(player.col + player.width / 2, (player.row >> 8) + (player.rdel >> 8) + 5, 240)] == BLACK)
				{
					player.rdel = -player.rdel;
				} else
				{
					player.row += player.rdel;
					player.rdel += 20;
				}
			} else
			{
				player.row += player.rdel;
				player.rdel += 20;
			}

		}
		else
		{
			jumping = 0;
			player.rdel = 0;
		}

		// if aniState is idle, then curFrame is 0

		if (player.aniState == BOSHYIDLE)
		{
			player.curFrame = 0;
			player.aniState = player.prevAniState;
		}
		else
		{
			player.aniCounter++;
		}

		if (player.col < 1)
		{
			currLevel++;
			player.col = SCREENWIDTH - player.width - 2;
			player.row = 60 << 8;
			player.rdel = 0;
		}if (player.col > SCREENWIDTH - 12 && BUTTON_PRESSED(BUTTON_B))
		{
			playerLife++;
		}
	}
	if (currLevel == 2)
	{
		if (player.aniState != BOSHYIDLE)
		{
			player.prevAniState = player.aniState;
		}
		player.aniState = BOSHYIDLE;

		// Change animation every 20 frames
		if (player.aniCounter % 20 == 0)
		{
			if (player.curFrame < player.numFrames - 1)
			{
				player.curFrame++;
			}
			else
			{
				player.curFrame = 0;
			}
		}
		if (BUTTON_HELD(BUTTON_LEFT) 
		&& (collisionmap2Bitmap[OFFSET(player.col, player.row >> 8, 240)] == WHITE) 
		&& (collisionmap2Bitmap[OFFSET(player.col, (player.row >> 8) + player.height - 1, 240)] == WHITE) 
		&& (collisionmap2Bitmap[OFFSET(player.col, (player.row >> 8) + player.height / 2, 240)] == WHITE))
		{
			player.aniState = BOSHYLEFT;
			player.col -= player.cdel;
		}
		if (BUTTON_HELD(BUTTON_RIGHT) 
		&& (collisionmap2Bitmap[OFFSET(player.col + player.width + 1, (player.row >> 8), 240)] == WHITE) 
		&& (collisionmap2Bitmap[OFFSET(player.col + player.width + 1, (player.row >> 8) + player.height - 1, 240)] == WHITE) 
		&& (collisionmap2Bitmap[OFFSET(player.col + player.width + 1, (player.row >> 8) + player.height / 2, 240)] == WHITE))
		{
			player.aniState = BOSHYRIGHT;
			player.col += player.cdel;
		}
		// jump
		if ((BUTTON_PRESSED(BUTTON_A) && !jumping))
		{
			playSoundA(jumpSound, JUMPSOUNDLEN, JUMPSOUNDFREQ, 0);
			jumping = 1;
			player.rdel = -rdel * 1.8;
			player.row += player.rdel;
		}
		
		
		if (collisionmap2Bitmap[OFFSET(player.col + 1, (player.row >> 8) + player.height + (player.rdel >> 8), 240)] == WHITE 
		&& collisionmap2Bitmap[OFFSET(player.col + player.width, (player.row >> 8) + player.height + (player.rdel >> 8), 240)] == WHITE 
		&& collisionmap2Bitmap[OFFSET(player.col + player.width / 2, (player.row >> 8) + player.height + (player.rdel >> 8), 240)] == WHITE)
		{
			player.row += player.rdel;
			player.rdel += 20;
		}
		else
		{
			jumping = 0;
			player.rdel = 0;
		}

		// if aniState is idle, then curFrame is 0

		if (player.aniState == BOSHYIDLE)
		{
			player.curFrame = 0;
			player.aniState = player.prevAniState;
		}
		else
		{
			player.aniCounter++;
		}
		if (player.col > SCREENWIDTH - player.width) {
			currLevel = 1;
			player.col = 3;
			player.row = 68 << 8;
		}
		if (player.row >> 8 < 1)
		{
			initApple2();
			currLevel= 3;
			player.row = 130 << 8;
			player.rdel = 0;
		}
		if (player.row >> 8 > 140)
		{
			if(level2Cheat)
			{
				player.row = 50 << 8;
				player.col = 210;
			} else {
				playerLife--;
			}
			
		}
		
	}
	if (currLevel == 3) {
		if (player.aniState != BOSHYIDLE)
		{
			player.prevAniState = player.aniState;
		}
		player.aniState = BOSHYIDLE;

		// Change animation every 20 frames
		if (player.aniCounter % 20 == 0)
		{
			if (player.curFrame < player.numFrames - 1)
			{
				player.curFrame++;
			}
			else
			{
				player.curFrame = 0;
			}
		}
		if (BUTTON_HELD(BUTTON_LEFT) 
		&& (collisionmap3Bitmap[OFFSET(player.col, player.row >> 8, 240)] == WHITE) 
		&& (collisionmap3Bitmap[OFFSET(player.col, (player.row >> 8) + player.height - 1, 240)] == WHITE) 
		&& (collisionmap3Bitmap[OFFSET(player.col, (player.row >> 8) + player.height / 2, 240)] == WHITE))
		{
			player.aniState = BOSHYLEFT;
			player.col -= player.cdel;
		}
		if (BUTTON_HELD(BUTTON_RIGHT) 
		&& (collisionmap3Bitmap[OFFSET(player.col + player.width + 1, (player.row >> 8), 240)] == WHITE) 
		&& (collisionmap3Bitmap[OFFSET(player.col + player.width + 1, (player.row >> 8) + player.height - 1, 240)] == WHITE) 
		&& (collisionmap3Bitmap[OFFSET(player.col + player.width + 1, (player.row >> 8) + player.height / 2, 240)] == WHITE))
		{
			player.aniState = BOSHYRIGHT;
			player.col += player.cdel;
		}
		// jump
		if ((BUTTON_PRESSED(BUTTON_A) && !jumping))
		{
			playSoundA(jumpSound, JUMPSOUNDLEN, JUMPSOUNDFREQ, 0);
			jumping = 1;
			player.rdel = -rdel * 1.8;
			player.row += player.rdel;
		}
		if (collisionmap3Bitmap[OFFSET(player.col + 1, (player.row >> 8) + player.height + (player.rdel >> 8), 240)] == WHITE 
		&& collisionmap3Bitmap[OFFSET(player.col + player.width, (player.row >> 8) + player.height + (player.rdel >> 8), 240)] == WHITE 
		&& collisionmap3Bitmap[OFFSET(player.col + player.width / 2, (player.row >> 8) + player.height + (player.rdel >> 8), 240)] == WHITE)
		{
			player.row += player.rdel;
			player.rdel += 20;
		}
		else
		{
			jumping = 0;
			player.rdel = 0;
		}

		// if aniState is idle, then curFrame is 0

		if (player.aniState == BOSHYIDLE)
		{
			player.curFrame = 0;
			player.aniState = player.prevAniState;
		}
		else
		{
			player.aniCounter++;
		}

		if (player.col > SCREENWIDTH - player.width - 3)
		{
			for (int i = 0; i < APPLECOUNT - 2; i++)
			{
				shadowOAM[i + 7].attr0 = ATTR0_HIDE;
			}
			
			currLevel = 1;
			player.row = (1) << 8;
			player.col = SCREENWIDTH - player.width - 3;
		}
	}
}
void drawPlayer()
{
	shadowOAM[0].attr0 = (int)(player.row >> 8) | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
	shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.prevAniState * 2, player.curFrame * 2);
}
void initApple()
{
	for (int i = 0; i < APPLECOUNT; i++)
	{
		apples[i].rdel = 0;
		apples[i].cdel = 0;
		apples[i].width = 16;
		apples[i].height = 16;
		apples[i].aniCounter = 0;
		apples[i].curFrame = 0;
		apples[i].numFrames = 2;
		apples[i].active = 1;
	}

	apples[0].row = 113;
	apples[0].col = 20;

	apples[1].row = 115;
	apples[1].col = 80;
	apples[1].direction = 1;

	apples[2].row = 112;
	apples[2].col = 103;

	apples[3].row = 110;
	apples[3].col = 124;
	apples[3].direction = 1;

	apples[4].row = 116;
	apples[4].col = 150;
}
void updateApple(ANISPRITE *b, int x)
{
	
	if (b->aniCounter % 20 == 0)
	{
		if (b->curFrame < b->numFrames - 1)
		{
			b->curFrame++;
		}
		else
		{
			b->curFrame = 0;
		}
	}
	b->aniCounter++;
	if (b->active)
	{
		if (player.col + 12 > b->col && b->direction)
		{
			b->rdel = appleSPD;
		}
		if (player.col + 12 > b->col && (player.row >> 8) < b->row && player.col < b->col + 13 && !b->direction)
		{
			b->rdel = -appleSPD;
		}
		if (b->direction)
		{
			b->row += b->rdel;
		}
		if (!b->direction)
		{
			b->row += b->rdel;
		}
		if (b->row > 159 || b->row < 10)
		{
			b->active = 0;
		}
		if (collision(b->col, b->row, b->width, 8, player.col, player.row >> 8, 15, 12))
		{
			playerLife--;
		}
	}
}
void drawApple()
{
	for (int i = 0; i < APPLECOUNT; i++)
	{
		if (apples[i].active)
		{
			shadowOAM[i + 1].attr0 = apples[i].row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[i + 1].attr1 = apples[i].col | ATTR1_SMALL;
			shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, apples[i].curFrame * 2);
		} else {
			shadowOAM[i + 1].attr0 = ATTR0_HIDE;
		}
	}
}
void initHeart() 
{
	heart.row = 20;
	heart.col = 180;
	heart.rdel = 0;
	heart.cdel = 0;
	heart.width = 16;
	heart.height = 16;
	heart.aniCounter = 0;
	heart.curFrame = 0;
	heart.numFrames = 2;
	heart.active = 1;
}
void drawHeart() 
{
	
	if (heart.aniCounter % 20 == 0)
	{
		if (heart.curFrame < heart.numFrames - 1)
		{
			heart.curFrame++;
		}
		else
		{
			heart.curFrame = 0;
		}
	}
	heart.aniCounter++;
	shadowOAM[6].attr0 = heart.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[6].attr1 = heart.col | ATTR1_SMALL;
	shadowOAM[6].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, heart.curFrame * 2);
	if (currLevel != 1)
	{
		shadowOAM[6].attr0 = ATTR0_HIDE;
	} 
	
}
void updateHeart()
{
	if (collision(heart.col, heart.row, heart.width, 8, player.col, player.row >> 8, 15, 12))
	{
		playerLife = 2;
	}
}

void initApple2() {
	for (int i = 0; i < APPLECOUNT - 2; i++)
	{
		stage3apples[i].rdel = 0;
		stage3apples[i].cdel = 0;
		stage3apples[i].width = 16;
		stage3apples[i].height = 16;
		stage3apples[i].aniCounter = 0;
		stage3apples[i].curFrame = 0;
		stage3apples[i].numFrames = 2;
		stage3apples[i].active = 1;
	}
	stage3apples[0].row = 160;
	stage3apples[0].col = 100;

	stage3apples[1].row = 160;
	stage3apples[1].col = 150;

	stage3apples[2].row = 160;
	stage3apples[2].col = 200;
}
void updateApple2(ANISPRITE *b, int x) {
	if (currLevel == 1)
	{
		b->active = 0;
	}
	
	if (b->aniCounter % 20 == 0)
	{
		if (b->curFrame < b->numFrames - 1)
		{
			b->curFrame++;
		}
		else
		{
			b->curFrame = 0;
		}
	}
	b->aniCounter++;
	if (b->active)
	{
		if (player.col + 12 > b->col)
		{
			b->rdel = -appleSPD;
		}
		b->row += b->rdel;
		if (collision(b->col, b->row, b->width, 8, player.col, player.row >> 8, 15, 12))
		{
			playerLife--;
		}
	}
}
void drawApple2() {
	for (int i = 0; i < APPLECOUNT - 2; i++)
	{
		if (stage3apples[i].active)
		{
			shadowOAM[i + 7].attr0 = stage3apples[i].row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[i + 7].attr1 = stage3apples[i].col | ATTR1_SMALL;
			shadowOAM[i + 7].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, stage3apples[i].curFrame * 2);
		} else {
			shadowOAM[i + 7].attr0 = ATTR0_HIDE;
		}
	}
}
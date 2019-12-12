typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int active;
    int direction;
} ANISPRITE;

// Constants
#define APPLECOUNT 5

extern int enemiesRemaining;
extern int currLevel;
extern int playerLife;

// Prototypes
void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void drawPlayer();
void initApple();
void updateApple(ANISPRITE *, int);
void drawApple();
void updateBullets(ANISPRITE *, int);
void fireEnemyBullet(ANISPRITE *);
void initHeart();
void drawHeart();
void updateHeart();
void initApple2();
void updateApple2(ANISPRITE *, int);
void drawApple2();

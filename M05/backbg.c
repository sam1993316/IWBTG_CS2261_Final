
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

const unsigned short backbgTiles[1568] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x7777,0x7777,0x7773,0x7733,0x7777,0x7377,0x7777,0x3777,
	0x3557,0x7A75,0x3353,0x5735,0x3335,0x7773,0x7777,0x7377,
	0x7777,0x7777,0x3A57,0x3777,0x7777,0x7777,0x7733,0x7737,
	0x7777,0xA335,0x3555,0x5375,0x3537,0x7333,0x7777,0x7777,
	0x7777,0x7777,0x5777,0x773A,0x7777,0x7777,0x3377,0x7777,
	0x73A7,0x3537,0x5337,0x755A,0x3777,0x3335,0x7773,0x7777,

	0x7777,0x7777,0x7377,0x3537,0x3777,0x7777,0x7777,0x7337,
	0x7753,0x7733,0x7357,0x3555,0x7733,0x3573,0x3777,0x7777,
	0x7777,0x7777,0x3777,0x3773,0x7777,0x7737,0x7777,0x3377,
	0x5335,0x33A7,0x5335,0x5537,0x3733,0x3777,0x7777,0x7733,
	0x7777,0x7777,0x7353,0x3377,0x7777,0x7777,0x7773,0x7773,
	0x5773,0x7A33,0x5355,0x7557,0x3353,0x7333,0x7777,0x3777,
	0x7777,0x7777,0x3577,0x7773,0x7777,0x7777,0x7337,0x7777,
	0x773A,0x535A,0x353A,0x5755,0x5377,0x3733,0x7777,0x7777,

	0x7777,0x7777,0x7737,0x3357,0x7377,0x7777,0x7777,0x7733,
	0x3375,0x5773,0x5335,0x5355,0x7773,0x3357,0x7377,0x7777,
	0x7777,0x7777,0x3373,0xAA77,0x7777,0x7773,0x7777,0x7377,
	0x7533,0x777A,0x7533,0x5553,0x7333,0x5337,0x3777,0x7777,
	0x7777,0x7777,0x773A,0x7737,0x7777,0x7777,0x3777,0x7773,
	0x3577,0x5733,0x3535,0x3755,0x3335,0x7733,0x7777,0x7377,
	0x7777,0x7777,0x3357,0x3777,0x7777,0x7777,0x7733,0x7737,
	0x3773,0x7535,0x5353,0xA575,0x3537,0x3333,0x7777,0x7777,

	0x7777,0x7777,0x7733,0x3335,0x7777,0x7777,0x3777,0x7773,
	0x3577,0x5A77,0x337A,0xA535,0x7773,0x3355,0x7737,0x7777,
	0x7777,0x7777,0x7337,0x3537,0x7777,0x7777,0x7777,0x7777,
	0x7753,0x7733,0x7353,0x3555,0x7733,0x3533,0x3777,0x7777,
	0x7777,0x7777,0x7373,0x7733,0x7777,0x7377,0x3377,0x3777,
	0x3357,0x3A75,0x3353,0xA375,0x3333,0x7773,0x7777,0x7737,
	0x7777,0x7777,0x73AA,0x3377,0x7777,0x7777,0x7773,0x7773,
	0x5377,0x7A53,0x5355,0x7553,0x3353,0x7333,0x7777,0x3777,

	0x7777,0x7777,0x5773,0x7733,0x7777,0x7777,0x7377,0x7777,
	0x73A7,0x3557,0x5A37,0x3353,0x5777,0x3335,0x7773,0x7777,
	0x7777,0x7777,0x7737,0x73A3,0x7377,0x7777,0x7777,0x7773,
	0x7375,0x5773,0x5735,0x5355,0x3773,0x3353,0x7377,0x7777,
	0x7777,0x7777,0x3777,0x5773,0x7777,0x7737,0x7737,0x3377,
	0x5335,0x73A7,0x5375,0x5337,0x3333,0x3777,0x7777,0x7773,
	0x7777,0x7777,0x7733,0x7737,0x7777,0x7777,0x3777,0x7773,
	0x3537,0x3733,0x3553,0x5755,0x3335,0x7733,0x7777,0x7377,

	0x7777,0x7777,0x3577,0x7737,0x7777,0x7777,0x7337,0x7337,
	0x7733,0x533A,0x3535,0x5335,0x3577,0x3733,0x7777,0x7777,
	0x7777,0x7777,0x3773,0x7735,0x7737,0x7777,0x7777,0x3777,
	0x3337,0x3537,0x5573,0x3535,0x3777,0x3335,0x7737,0x7777,
	0x7777,0x7777,0x3377,0x5A77,0x7777,0x7777,0x7773,0x7377,
	0x7533,0x7373,0x3533,0x5553,0x7333,0x5377,0x3777,0x7773,
	0x7777,0x7777,0x7337,0x7733,0x7777,0x7777,0x7377,0x3777,
	0x3353,0x3575,0x3353,0x3375,0x3333,0x7777,0x7777,0x7737,

	0x7777,0x7777,0x3357,0x3777,0x7777,0x7777,0x7733,0x7377,
	0x3773,0x7535,0x3353,0x3575,0x35A7,0x3373,0x7777,0x7777,
	0x7777,0x7777,0x5377,0x7733,0x7773,0x7777,0x7377,0x7777,
	0x7337,0x3A57,0xE553,0x3A53,0x5737,0x7333,0x7773,0x7777,
	0x7777,0x7777,0x7337,0x3A57,0x3777,0x7777,0x7777,0x7733,
	0x3753,0x7773,0x3353,0x3555,0x7377,0x3537,0x3377,0x7777,
	0x7777,0x7777,0x3777,0x5777,0x7777,0x7777,0x7337,0x3377,
	0xA335,0x7357,0x5A75,0x5533,0x7333,0x5777,0x7777,0x7773,

	0x7777,0x7777,0x7335,0x7377,0x7777,0x3777,0x7773,0x7737,
	0x5377,0x7753,0x55A5,0x7357,0x3355,0x7337,0x7777,0x3777,
	0x7777,0x7777,0x3537,0x3733,0x7777,0x7777,0x7737,0x7777,
	0x7733,0x5335,0x3555,0x5335,0x3537,0x7733,0x7777,0x7777,
	0x7777,0x7777,0x7733,0x7355,0x7377,0x7777,0x3777,0x7773,
	0x3A75,0x5777,0x3335,0x5355,0x7777,0x3353,0x7337,0x7777,
	0x7777,0x7777,0x7377,0x3577,0x7777,0x7777,0x7733,0x7337,
	0x7A33,0x773A,0x3557,0x3553,0x7333,0x5377,0x3777,0x7777,

	0x7777,0x7777,0x7733,0x7737,0x7777,0x7377,0x3777,0x7777,
	0xA537,0x3775,0x7553,0x5735,0x7335,0x7733,0x7777,0x7377,
	0x7777,0x7777,0x5537,0x7375,0x7773,0x3377,0x7777,0x5777,
	0x7777,0xE577,0x7373,0x7733,0x7777,0x7777,0x7773,0x7733,
	0x7777,0x7777,0x7777,0x3EE3,0x7373,0x7777,0x7355,0x7777,
	0x73AE,0x7777,0x3557,0x3773,0x7777,0x7777,0x3A57,0x3777,
	0x7777,0x7777,0x73A7,0x5577,0x7757,0x777A,0x5537,0x7777,
	0x3E53,0x7777,0x5777,0x733A,0x7777,0x7777,0x5777,0x773A,

	0x7777,0x7777,0x77E5,0x7733,0x7777,0x3375,0x7777,0x73E5,
	0x5777,0x7355,0x7337,0x3537,0x7777,0x7777,0x7377,0x3537,
	0x7777,0x7777,0xA553,0x3337,0x7777,0x7337,0x7777,0xE577,
	0x7777,0x5E53,0x3777,0x3773,0x7777,0x7777,0x3777,0x3773,
	0x7777,0x7777,0x3773,0x73EE,0x7737,0x7777,0x777E,0x7777,
	0x7735,0x3777,0x3353,0x7377,0x7777,0x7777,0x7353,0x3377,
	0x7777,0x7777,0x7733,0x5553,0xA735,0x7777,0x7533,0x7777,
	0x73E5,0x7777,0x3577,0x3733,0x7777,0x7777,0x3577,0x7773,

	0x7777,0x7777,0x3775,0x3773,0x5377,0x7337,0xA777,0x7735,
	0x5577,0x7735,0x7733,0x7357,0x7777,0x7777,0x7737,0x3357,
	0x7777,0x7777,0x735E,0x7373,0x7377,0xA7A3,0x7777,0x7557,
	0x3777,0x7555,0x3377,0x5377,0x7777,0x7777,0x3373,0xAA77,
	0x7777,0x7777,0xE577,0xA77E,0x777A,0x3777,0x7777,0x3777,
	0x7777,0x5377,0x7335,0x7737,0x7777,0x7777,0x773A,0x7737,
	0x7777,0x7777,0x3773,0x7EE5,0x7A77,0x7777,0x7755,0x7777,
	0x773E,0x7777,0x3357,0x3777,0x7777,0x7777,0x3357,0x3777,

	0x7777,0x7777,0x3A77,0x5377,0x7577,0x77A7,0x5377,0x7775,
	0x5E37,0x7773,0x7733,0x3735,0x7777,0x7777,0x7733,0x3335,
	0x7777,0x7777,0x7755,0x7737,0x7777,0x3375,0x7777,0x73E5,
	0x5777,0x735E,0x7337,0x3537,0x7777,0x7777,0x7337,0x3537,
	0x7777,0x7777,0xEE37,0x3373,0x7773,0x3373,0x7777,0x5777,
	0x7777,0xE577,0x7773,0x7733,0x7777,0x7777,0x7373,0x7733,
	0x7777,0x7777,0x5777,0x73EE,0x77A7,0x7377,0x7775,0x7777,
	0x777A,0x3777,0x3355,0x7377,0x7777,0x7777,0x73AA,0x3377,

	0x7777,0x7777,0x7337,0x5537,0x7757,0x7773,0x3537,0x7777,
	0x3553,0x7777,0x5777,0x7773,0x7777,0x7777,0x5773,0x7733,
	0x7777,0x7777,0x7775,0x3773,0x5777,0x77A7,0x5777,0x773E,
	0xE577,0x7735,0x7737,0x7353,0x7777,0x7777,0x7737,0x73A3,
	0x7777,0x7777,0xA5E3,0x7337,0x7777,0x7337,0x7777,0x5377,
	0x7777,0xAE53,0x3777,0x5773,0x7777,0x7777,0x3777,0x5773,
	0x7777,0x7777,0xE577,0x377E,0x777A,0x5777,0x7777,0x3777,
	0x7777,0xE377,0x733A,0x7737,0x7777,0x7777,0x7733,0x7737,

	0x7777,0x7777,0x7733,0x5E53,0x3375,0x7777,0x7353,0x7777,
	0x735E,0x7777,0x3577,0x3777,0x7777,0x7777,0x3577,0x7737,
	0x7777,0x7777,0x3777,0xE377,0x7537,0x777A,0xE577,0x7777,
	0x5E57,0x7777,0x3773,0x7335,0x7777,0x7777,0x3773,0x7735,
	0x7777,0x7777,0x7A5E,0x7377,0x7377,0xA733,0x7777,0x7557,
	0x3777,0x75E5,0x3377,0x5A77,0x7777,0x7777,0x3377,0x5A77,
	0x7777,0x7777,0xEE37,0x3A73,0x7777,0x7A73,0x7777,0x5777,
	0x7777,0xE537,0x3773,0x7733,0x7777,0x7777,0x7337,0x7733,

	0x7777,0x7777,0x7773,0x7EE5,0x7A77,0x7777,0x7755,0x7777,
	0x773E,0x7777,0x3357,0x3377,0x7777,0x7777,0x3357,0x3777,
	0x7777,0x7777,0x7337,0x5537,0x3757,0x7773,0x3E57,0x7777,
	0x755A,0x7777,0x5377,0x7333,0x7777,0x7777,0x5377,0x7733,
	0x7777,0x7777,0x3755,0x7773,0x3737,0x7A73,0x7777,0x7755,
	0x5377,0x77AE,0x7337,0x3557,0x7777,0x7777,0x7337,0x3A57,
	0x7777,0x7777,0x3EE3,0x73A7,0x7777,0x7757,0x7777,0x3537,
	0x7777,0x3E53,0x3373,0x5777,0x7777,0x7777,0x3777,0x5777,

	0x7777,0x7777,0x5777,0x77EE,0x77A7,0x7777,0x7773,0x7777,
	0x7773,0xA777,0x33A5,0x7337,0x7777,0x7777,0x7335,0x7377,
	0x7777,0x7777,0x7733,0xA553,0x3375,0x3777,0x73E5,0x7777,
	0x7355,0x7777,0x3537,0x3773,0x7777,0x7777,0x3537,0x3733,
	0x7777,0x7777,0x337A,0x3773,0x3373,0x77A7,0x5777,0x7775,
	0xE537,0x7773,0x7733,0x3355,0x7777,0x7777,0x7733,0x7355,
	0x7777,0x7777,0x77EE,0x7733,0x7377,0xA775,0x7777,0x7553,
	0x3777,0x7355,0x7377,0xA577,0x7777,0x7777,0x7377,0x3577,

	0x7777,0x7777,0x5577,0x377E,0x777A,0x5777,0x7777,0x5777,
	0x7777,0xE577,0x777A,0x7733,0x7777,0x7777,0x7733,0x7737,
	0x7777,0x7377,0x7777,0x3777,0x3557,0x7A75,0x3353,0x5735,
	0x3335,0x7773,0x7777,0x7377,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7733,0x7737,0x7777,0xA335,0x3555,0x5375,
	0x3537,0x7333,0x7777,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x3377,0x7777,0x73A7,0x3537,0x5337,0x755A,
	0x3777,0x3335,0x7773,0x7777,0x1111,0x1111,0x1111,0x1111,

	0x3777,0x7777,0x7777,0x7337,0x7753,0x7733,0x7357,0x3555,
	0x7733,0x3573,0x3777,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7737,0x7777,0x3377,0x5335,0x33A7,0x5335,0x5537,
	0x3733,0x3777,0x7777,0x7733,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7773,0x7773,0x5773,0x7A33,0x5355,0x7557,
	0x3353,0x7333,0x7777,0x3777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7337,0x7777,0x773A,0x535A,0x353A,0x5755,
	0x5377,0x3733,0x7777,0x7777,0x1111,0x1111,0x1111,0x1111,

	0x7377,0x7777,0x7777,0x7733,0x3375,0x5773,0x5335,0x5355,
	0x7773,0x3357,0x7377,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7773,0x7777,0x7377,0x7533,0x777A,0x7533,0x5553,
	0x7333,0x5337,0x3777,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x3777,0x7773,0x3577,0x5733,0x3535,0x3755,
	0x3335,0x7733,0x7777,0x7377,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7733,0x7737,0x3773,0x7535,0x5353,0xA575,
	0x3537,0x3333,0x7777,0x7777,0x1111,0x1111,0x1111,0x1111,

	0x7777,0x7777,0x3777,0x7773,0x3577,0x5A77,0x337A,0xA535,
	0x7773,0x3355,0x7737,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7777,0x7777,0x7753,0x7733,0x7353,0x3555,
	0x7733,0x3533,0x3777,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7377,0x3377,0x3777,0x3357,0x3A75,0x3353,0xA375,
	0x3333,0x7773,0x7777,0x7737,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7773,0x7773,0x5377,0x7A53,0x5355,0x7553,
	0x3353,0x7333,0x7777,0x3777,0x1111,0x1111,0x1111,0x1111,

	0x7777,0x7777,0x7377,0x7777,0x73A7,0x3557,0x5A37,0x3353,
	0x5777,0x3335,0x7773,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7377,0x7777,0x7777,0x7773,0x7375,0x5773,0x5735,0x5355,
	0x3773,0x3353,0x7377,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7737,0x7737,0x3377,0x5335,0x73A7,0x5375,0x5337,
	0x3333,0x3777,0x7777,0x7773,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x3777,0x7773,0x3537,0x3733,0x3553,0x5755,
	0x3335,0x7733,0x7777,0x7377,0x1111,0x1111,0x1111,0x1111,

	0x7777,0x7777,0x7337,0x7337,0x7733,0x533A,0x3535,0x5335,
	0x3577,0x3733,0x7777,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7737,0x7777,0x7777,0x3777,0x3337,0x3537,0x5573,0x3535,
	0x3777,0x3335,0x7737,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7773,0x7377,0x7533,0x7373,0x3533,0x5553,
	0x7333,0x5377,0x3777,0x7773,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7377,0x3777,0x3353,0x3575,0x3353,0x3375,
	0x3333,0x7777,0x7777,0x7737,0x1111,0x1111,0x1111,0x1111,

	0x7777,0x7777,0x7733,0x7377,0x3773,0x7535,0x3353,0x3575,
	0x35A7,0x3373,0x7777,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7773,0x7777,0x7377,0x7777,0x7337,0x3A57,0xE553,0x3A53,
	0x5737,0x7333,0x7773,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x3777,0x7777,0x7777,0x7733,0x3753,0x7773,0x3353,0x3555,
	0x7377,0x3537,0x3377,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7337,0x3377,0xA335,0x7357,0x5A75,0x5533,
	0x7333,0x5777,0x7777,0x7773,0x1111,0x1111,0x1111,0x1111,

	0x7777,0x3777,0x7773,0x7737,0x5377,0x7753,0x55A5,0x7357,
	0x3355,0x7337,0x7777,0x3777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7737,0x7777,0x7733,0x5335,0x3555,0x5335,
	0x3537,0x7733,0x7777,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7377,0x7777,0x3777,0x7773,0x3A75,0x5777,0x3335,0x5355,
	0x7777,0x3353,0x7337,0x7777,0x1111,0x1111,0x1111,0x1111,
	0x7777,0x7777,0x7733,0x7337,0x7A33,0x773A,0x3557,0x3553,
	0x7333,0x5377,0x3777,0x7777,0x1111,0x1111,0x1111,0x1111,

	0x7777,0x7377,0x3777,0x7777,0xA537,0x3775,0x7553,0x5735,
	0x7335,0x7733,0x7777,0x7377,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
};

const unsigned short backbgMap[1024] __attribute__((aligned(4)))=
{
	0x1001,0x1002,0x1003,0x1004,0x1005,0x1006,0x1007,0x1008,
	0x1009,0x100A,0x100B,0x100C,0x100D,0x100E,0x100F,0x1010,
	0x1011,0x1012,0x1013,0x1014,0x1015,0x1016,0x1017,0x1018,
	0x1019,0x101A,0x101B,0x101C,0x101D,0x101E,0x101F,0x1020,
	0x1021,0x1022,0x1023,0x1024,0x1025,0x1026,0x1027,0x1028,
	0x1029,0x102A,0x102B,0x102C,0x102D,0x102E,0x102F,0x1030,
	0x1031,0x1032,0x1033,0x1034,0x1035,0x1036,0x1037,0x1038,
	0x1039,0x103A,0x103B,0x103C,0x103D,0x103E,0x103F,0x1040,

	0x1041,0x1042,0x1043,0x1044,0x1045,0x1046,0x1047,0x1048,
	0x1049,0x104A,0x104B,0x104C,0x104D,0x104E,0x104F,0x1050,
	0x1051,0x1052,0x1053,0x1054,0x1055,0x1056,0x1057,0x1058,
	0x1059,0x105A,0x105B,0x105C,0x105D,0x105E,0x105F,0x1060,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,

	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,

	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,

	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,

	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,

	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,

	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,

	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,

	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,
	0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,0x1061,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short backbgPal[256] __attribute__((aligned(4)))=
{
	0x0400,0x5650,0x2460,0x77BB,0x3D26,0x6B35,0x1841,0x7FDE,
	0x45CD,0x3060,0x6F5A,0x14A6,0x1000,0x30C3,0x5ED3,0x2929,
	0x0400,0x0000,0x2460,0x77BB,0x3D26,0x6B35,0x1841,0x7FDE,
	0x45CD,0x3060,0x6F5A,0x14A6,0x1000,0x30C3,0x5ED3,0x2929,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(backbg)
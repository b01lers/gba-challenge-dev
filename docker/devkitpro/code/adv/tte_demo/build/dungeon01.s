
@{{BLOCK(dungeon01)

@=======================================================================
@
@	dungeon01, 512x512@4, 
@	+ palette 134 entries, lz77 compressed
@	+ 144 tiles (t|f|p reduced) lz77 compressed
@	+ regular map (in SBBs), lz77 compressed, 64x64 
@	Total size: 268 + 2852 + 2008 = 5128
@
@	Time-stamp: 2020-07-05, 22:16:50
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.16
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global dungeon01Tiles		@ 2852 unsigned chars
	.hidden dungeon01Tiles
dungeon01Tiles:
	.word 0x00120010,0xF0000032,0xEE059001,0xFE0140EE,0x400960E1,0xCC10300A,0x00DCCCCC,0x00DD5503
	.word 0x0600CD06,0xA906009C,0xBA510600,0x00BB0600,0xDDDDBB06,0x00800130,0x9999CC27,0xAAAA9999
	.word 0xBBAAAA09,0x550170BB,0x50013055,0x45033054,0x54340700,0x13004555,0x31345554,0x40134554
	.word 0x341F5043,0x13333333,0x11110011,0x55544311,0x55004443,0x43334455,0x24133455,0x5FD05431
	.word 0x6600B99A,0x99419CCB,0xC99A0600,0xE0CCBB9C,0x9A99001F,0x9B99ABA9,0x9A01B9B9,0xBCCBB9AB
	.word 0xA600CBCC,0xA600CB50,0xBC0600DC,0x56CCBBBA,0xBB0600BB,0x10BB0680,0xCAE010B7,0x90B400DF
	.word 0xC400BA03,0xD710CB10,0xD390DB10,0x10DF50C0,0x123442EB,0x40333244,0x43031031,0x33212332
	.word 0x11420021,0x41344132,0x33003121,0x33311341,0x00343431,0x34531661,0x44416671,0x41677100

	.word 0x41771444,0x11440043,0x44433241,0x32001153,0x11225443,0x00D94432,0xB999999D,0xB9CCCD9B
	.word 0xBBBB9B00,0xFBBF9BB9,0xF99A009A,0xF9CD9AFF,0xBB0E9AFE,0x1099FEF9,0x01540103,0x11809D82
	.word 0xFFFFFD53,0xFEEEDCB9,0xFDCCDD00,0xDCBCCCDF,0xCB9A04CD,0x0099ACCB,0x80ADABA7,0xBACBBA00
	.word 0xACBBACAB,0xBBAA00CA,0xBBAAACAB,0x9A5FAACA,0x00B90600,0x11BF2006,0x11035093,0x01B955A3
	.word 0xA801B9A0,0xDBAC01A9,0x01BEFB10,0xB801C9B4,0xC3111310,0xCB11DB50,0x21330031,0x12333143
	.word 0x22001132,0x44111214,0x08124213,0x12312333,0x3112E800,0x10114123,0x21224403,0x1F003343
	.word 0x22333300,0x34222221,0x44440811,0xCA014233,0x02333232,0x22213223,0xC7102112,0xF9A9009A
	.word 0x9CC9AAFF,0xB910AACC,0xEC00AA9B,0x999BBBEF,0x9AAAFF00,0x9AAAAF9C,0xB999029B,0x9F999CBC

	.word 0x80CCCF01,0xCBCCD011,0xB9BCC99C,0x9BC9009C,0xB9B99C99,0x1280CB9B,0xB9AAAB4F,0xAB9AA99A
	.word 0xB99A9A0E,0x000610AA,0xA90D10A3,0xA9AAA909,0xA9DD0099,0xFF73529A,0xD310DB50,0x8B52D710
	.word 0x2BB013F0,0xB702B342,0x4B009A44,0x00AA9AA9,0xE0A9AA6D,0x5B105700,0xDBD97200,0x00D99BAD
	.word 0xD99C9CC9,0xD99C9999,0x9CBBBB01,0x9CCCCDD9,0x9A703701,0xEF120310,0x9EEE0350,0xFF0EEEEE
	.word 0x50FFFE9E,0x200F1003,0x00B69A7B,0x5410A95B,0x00999A02,0x9A9F02B4,0xA612A97B,0x46100D10
	.word 0x50A98BD0,0xFADB20BB,0x1FD0CBD0,0x92202740,0x00A9E900,0x00FFA9BF,0x00710006,0x01071004
	.word 0x10039036,0x801370D7,0x9CD91B01,0xBCCB999A,0xCBA90899,0x03E09ABC,0x029ABAAB,0xBCBBACCC
	.word 0x0D13CBBB,0x2D13C4AC,0xBBAC0850,0xBB0340CB,0xBBCC04CA,0x02BCCCAB,0x87ABBB81,0xBCCA5A03

	.word 0x4B03BCCB,0x4F230310,0x03E410FF,0x01EB2092,0x300B70AC,0x30821217,0x1511DFBF,0x209ABF00
	.word 0x108801BF,0x40C700C4,0x0C50FF06,0xDBF00EE0,0xCF01EF80,0xF103B810,0x03E10320,0x00E603F8
	.word 0xBCCACB0E,0x6B1500BC,0x43F403AA,0x0310CBF7,0x601E14AC,0xCCBA0608,0x02ACCBBC,0xA9401266
	.word 0x9A990900,0x99A9909A,0xB9019009,0x0D00FA90,0x9A9099FA,0xA909A90C,0x01FF71AF,0x57FFFFEE
	.word 0xEE0360EF,0x00E90B00,0x40BE900F,0xD2B08DBD,0x109EFFFE,0xC9060027,0xBC553E00,0x00BB0600
	.word 0x0600BB06,0xA00600BB,0x14CB9304,0xCBCACC9B,0xCA1BCBBC,0xE803CCCB,0x00CC0700,0xD4D743C1
	.word 0x7D019811,0xACA705AC,0xBCACCC04,0x109741FF,0x108B150F,0x32036083,0x50072092,0x4303A617
	.word 0xAC4703CA,0x0201049A,0x9A5C99FC,0x109A0C04,0x40CC0539,0x10C99906,0x609CCCCC,0x9CDDDD03

	.word 0xCCCC01B9,0xBBBBA99B,0xA303109A,0x01BAF315,0xCCCCBAF4,0x63059F00,0x4B05CB6B,0x05CA3901
	.word 0x1C06DA7B,0x208E4345,0xCBCCBBA3,0x0B003702,0x3FBC6A11,0x9F05ACCC,0xCB10A320,0x83053702
	.word 0x02E43B12,0x206E053F,0x02CCBC03,0x97C9A998,0xABC9CE32,0x04A99613,0x04F513A8,0xB013BFAF
	.word 0x90875099,0x60C00407,0x548C1603,0xCCBA12F7,0xCB3B01CB,0xBCA300CC,0x159B10EB,0xC92C03E3
	.word 0x00A97612,0x7D752251,0x140704C9,0x357B1209,0xBA4F700C,0xB9700380,0xF3160340,0xABBA2D06
	.word 0x51EFBABB,0x00632593,0x4506B912,0x03F02327,0x06BA0B60,0x03F0AB91,0xC6050770,0xB903F0AA
	.word 0xBCCDAA06,0x3D05AAB9,0x0EEEDF91,0xFFFFFFE9,0x90120360,0x10229007,0x17222222,0x33133156
	.word 0x12310021,0x13211343,0x21003432,0x21432123,0x09431213,0x43131231,0x33221D30,0x44018A06

	.word 0x33334432,0xC5053343,0x233400A2,0x12223810,0xA9E76011,0x4203F0D0,0x6F55CC1B,0xBBABABA9
	.word 0xBB17029E,0xF01380A9,0x080B30D3,0x16EEAB54,0x50DBF098,0xC906C90B,0xC5130814,0x0306F8BD
	.word 0x03A09F04,0x71081730,0x01BBBD9A,0xBBBD9999,0x03A9BBDA,0xFB35EAD0,0x2F284335,0x9ACF119A
	.word 0x00996906,0x9BBCAB9A,0x9BBCAA99,0x0757BC60,0x2131AF18,0x53313413,0x4303E031,0x44210330
	.word 0xC6063D11,0x004401CE,0x00122101,0x402D0103,0x00FE2303,0xB097F00B,0xF0D218AF,0x06077001
	.word 0x09B8BBC9,0x07F0BB34,0x12190F30,0x00223321,0x21123132,0x32113123,0x01211221,0x123221BC
	.word 0x80C30132,0x31128817,0x31334311,0x22341031,0x318F0731,0x82571111,0x3167CF00,0x00713321
	.word 0x07851317,0x123444A8,0x11210012,0x33106908,0xE3012133,0x33322115,0x0F121741,0x44551133

	.word 0x0A2B0044,0x31332112,0x1023DA10,0x1100225A,0x12222331,0x04343341,0x22444123,0x338E1932
	.word 0x71230143,0x12343322,0x05B40822,0x33322221,0x12E50711,0x09C01710,0x61CD50AF,0x61666667
	.word 0x66670476,0x00776661,0x0A777603,0x57666661,0x19770340,0x664066D2,0x77770170,0x75757777
	.word 0x7575550E,0x00060075,0x329B2205,0x21661300,0x31156133,0x11610813,0x07005131,0x00665171
	.word 0x55157131,0x11577131,0x804750F8,0x200F9053,0x5553104B,0x55005175,0x55517777,0x00157557
	.word 0x55757755,0x55755551,0x1500157F,0x69000600,0x885A1F10,0x17230680,0x47757108,0x313A0031
	.word 0x57065512,0x55512331,0x6F01EB08,0x1301FD33,0x47003733,0xC50A5700,0x10570740,0x1300F00F
	.word 0x5B231750,0x22232F20,0x00BF2231,0x07003337,0x0300FD08,0x7B230710,0x32442B11,0x22335103

	.word 0x23020023,0x3B11F423,0x9B435E23,0x60237603,0x05444303,0x44444434,0x35370B34,0x34686351
	.word 0x0350A101,0x34031045,0x55372231,0x305B3044,0x7B003367,0x84096F00,0x000720DF,0x71003169
	.word 0x67508310,0x813001F0,0x33343100,0x77343166,0x74310376,0x64314666,0x07100300,0x200F10C4
	.word 0x76223317,0x32673D04,0x03001255,0x12031032,0x00220700,0x0021680F,0x311D0417,0x61110A12
	.word 0x22220016,0x24421661,0x12031661,0x32144121,0x70039023,0x42222A1F,0x00122700,0x03B0331F
	.word 0x41221322,0x323B1014,0x203F1023,0x2166004B,0x16446112,0x02EC6161,0x201F3039,0x3F10323B
	.word 0x66666B10,0x46222101,0x16111664,0x02B46802,0x5523666B,0x10111300,0x5F446609,0x16700214
	.word 0x7B527412,0x8110E124,0xA0ED0330,0x17031B17,0xDD0CDA4B,0x10BB7207,0x1B5BD003,0x09DDCF1C

	.word 0x999CDD1E,0xF51684CB,0x9CCB9CDD,0xDDB9010D,0x009C9C25,0x00CA9903,0x7F94C917,0x042907F7
	.word 0x0DB908FF,0x3D0CA901,0x551B0B15,0x590B9975,0x7F14AB15,0xAB7F0499,0xBB013317,0xAAAB9AAB
	.word 0x11449BCA,0x33317700,0x13316771,0x31460857,0x03005612,0x01316567,0x31577512,0x1D575122
	.word 0x11570012,0x17647751,0x44006677,0x76466717,0x20446617,0x0A107177,0x67715516,0x0D466E71
	.word 0xA98F008A,0x8F209F00,0x84BA9B00,0x9BA90BA0,0x0300BC99,0xBB5FA9C9,0x179B0310,0x1733172F
	.word 0x09AB25BF,0xBB9906B4,0x10999BCA,0x9BC40907,0xABBBBC0E,0x5007109C,0x151B0417,0x15123100
	.word 0x17512151,0x75110057,0x67515716,0x51087716,0x03671767,0x1771759A,0x77551108,0x618F0016
	.word 0x17005556,0x17111567,0x00443157,0x44431715,0x33442157,0x34215602,0x04215742,0x55027564

	.word 0x15777761,0x75A53366,0x03577529,0x020457F9,0xB7335755,0x1417A4F8,0x14152416,0x171F601B
	.word 0x76236666,0x15370416,0x03405757,0x55270B10,0x77DF0375,0x03871415,0xC0A7052F,0x0FD0E736
	.word 0x51321571,0x33201571,0x21033012,0x66151162,0x6E017641,0x77113165,0x21630151,0x53055517
	.word 0x33215511,0x0181D300,0x51557665,0x00446775,0xB704A4D5,0x31440455,0x56CF0433,0x67660061
	.word 0x56766155,0x67126155,0xEA005555,0xD40E6155,0x3F44F551,0x5FB455F4,0x0E150B05,0x071015D6
	.word 0x07106156,0x610F1061,0x97270F20,0x01514C12,0x0551115F,0x22030083,0x7F15A851,0x41830731
	.word 0x77655F45,0x66220215,0x66111577,0x7F770902,0x02E30215,0x55D317C9,0x0E0A0A7F,0xFDD71ED4
	.word 0x7B0B750F,0x7B6B0600,0x990BD71A,0xFDE83EBC,0x2420F70E,0xB72B000F,0xFB1A173B,0x95160FAA

	.word 0xAA9B0B1B,0x0BA9EA0B,0xC30F9CC1,0xAAA9CB1F,0x821A0800,0xD30F371B,0xCB02570E,0xACCCB9AA
	.word 0xC93F079A,0x9AAABC0D,0x105102BC,0x2E0AB915,0x0EA9B93B,0x0A21006E,0xD3079A33,0x00D7580E
	.word 0xBA7B5E42,0x10ABA70A,0x00590E66,0x790E910D,0x1400B9AB,0x0EADAAB9,0x7A10C071,0xCCA9400C
	.word 0xCCBA9ABB,0xBBA9AB07,0xA50F9ACC,0x775F5C0A,0x3C071DD2,0x4300CB7C,0x770CABBC,0x910CE0AB
	.word 0xEF025368,0xAA9CDD9A,0xA703A9A9,0xAA0703BA,0xDD99AB03,0x0AFB1C0B,0x1202207A,0x101911E1
	.word 0xDF00AAFB,0xCC737913,0x290F8789,0x99AC480E,0x880F1103,0x100B00C8,0x1DACC903,0xBB9A9999
	.word 0x0B2FAA7F,0x731B0F9F,0x5718572D,0x27302C2F,0x0DCD9A33,0xB95E0FE0,0x401A0AAB,0xADD93003
	.word 0x3F0B223E,0xDCCCC9CA,0x6F0FDA7E,0xDA104E2C,0xDF3F9F50,0x7FDCCD0B,0x3DA70FDA,0x371F90FB

	.word 0x16BB071F,0x4FEA0293,0x31A10931,0x30090633,0x0607400F,0x23332F6F,0x26221F10,0x078D0FBB
	.word 0x70F729C7

	.section .rodata
	.align	2
	.global dungeon01Map		@ 2008 unsigned chars
	.hidden dungeon01Map
dungeon01Map:
	.hword 0x0010,0x0020,0x013F,0xF070,0xF001,0xF001,0xF001,0xF001
	.hword 0xF001,0xFF01,0x01F0,0x01F0,0x01F0,0x01F0,0x01F0,0x01F0
	.hword 0x01F0,0x01F0,0xF0C6,0x3001,0x020B,0x0320,0x01F0,0x0960
	.hword 0x0004,0x0520,0x0520,0x0424,0x0624,0x2018,0x2007,0x3BF0
	.hword 0x3D10,0x2008,0x3009,0x0A20,0x03F0,0x0B40,0x400B,0x400C
	.hword 0x0C01,0x0B44,0x0D44,0x0E20,0x3FF0,0x2083,0x0F3D,0x1020
	.hword 0x1120,0x03F0,0x0B40,0x1200,0x1340,0x1340,0x1244,0x1844
	.hword 0x2014,0xE015,0x303F,0x163D,0x1720,0x2030,0xE018,0x3003

	.hword 0x1911,0x1A20,0x0E20,0x301B,0x341B,0x0330,0x3DF0,0x3D10
	.hword 0x0C1C,0x1D20,0x1E20,0x03E0,0x1110,0x201F,0x2000,0x2120
	.hword 0x2220,0x2330,0xEC30,0x0330,0x3DF0,0x3D10,0x0024,0xF03F
	.hword 0x1D01,0x0420,0x2025,0x2026,0x0027,0x283F,0x3830,0x3029
	.hword 0x0330,0x3DF0,0x3D10,0x202A,0x101B,0x1B40,0xD044,0x2B03
	.hword 0x2640,0x5320,0x002C,0x1A7F,0x7F20,0x201A,0x7F90,0x3DB0
	.hword 0x2D05,0x2E40,0x2F40,0x03E0,0x0030,0x113F,0x2026,0x6131
	.hword 0x321B,0x3320,0x7F41,0xD088,0x343D,0x3540,0x03F0,0x3040

	.hword 0x1848,0x2026,0x2036,0x31D5,0x371B,0x3820,0x21F4,0xF0BF
	.hword 0xF07B,0x307B,0x397F,0x13A1,0x203A,0x3B40,0xFF21,0x203C
	.hword 0x203D,0x203E,0x2000,0x2C24,0x2624,0x3024,0xC84C,0x77F0
	.hword 0x0B50,0x403F,0x1531,0x3040,0x0041,0x4130,0x4034,0x4234
	.hword 0x4320,0x4080,0x443F,0x4520,0x4620,0x4720,0x2006,0x2048
	.hword 0x4430,0x77F0,0x03D0,0x0149,0x4A30,0x4A30,0x4934,0x1034
	.hword 0x811B,0x7F70,0x204B,0x204C,0x204D,0x7FF0,0x7084,0x4E07
	.hword 0x4E30,0x1034,0x4F17,0x0630,0x3050,0x3450,0x204F,0x700B

	.hword 0x4B7F,0x2858,0x3F00,0xF028,0x707F,0x4E07,0x4E38,0x3C40
	.hword 0x1710,0x3051,0x3052,0x3452,0x5140,0x7FC0,0x2846,0x2847
	.hword 0x2848,0xF0F7,0xF07F,0x9003,0x7007,0x27FF,0x3D01,0x3F01
	.hword 0x7FF0,0xF0FF,0x8003,0xF107,0xF07F,0xF063,0xF003,0xF07F
	.hword 0xF07F,0xF103,0x03F0,0x7FF0,0x7FF0,0x03B0,0x7053,0xA054
	.hword 0x8E01,0x7FD0,0x3055,0x2155,0xF0D7,0x3003,0x560B,0x700C
	.hword 0x7057,0x8058,0xD001,0x597F,0x7030,0x2159,0xF0E3,0x3003
	.hword 0x560B,0x5A70,0x1870,0x705B,0x605C,0x3001,0x5DBF,0x5E20

	.hword 0xF0E0,0xF07F,0x2003,0x5A7F,0x5F70,0x6070,0x60C3,0x3001
	.hword 0x61FF,0x6230,0x3130,0x103F,0x0D7F,0x4C1B,0x481B,0x0340
	.hword 0x0920,0x813F,0x8413,0x3F90,0x6063,0x6064,0x3F40,0x6238
	.hword 0x3842,0x3F11,0x2C25,0x281D,0x01D0,0x1839,0x302C,0xF04C
	.hword 0x107F,0x6581,0x6660,0x4080,0x5D3F,0x5E28,0x2728,0x1F24
	.hword 0x2C38,0x201E,0x103D,0x3005,0x1E03,0x3628,0x2C71,0xD311
	.hword 0x7FF0,0xC110,0x6067,0x4068,0x807F,0x7F13,0x2C19,0x2817
	.hword 0x2818,0xE717,0x0100,0x0510,0x0330,0x2C31,0xD331,0x7FF0

	.hword 0xFFB0,0x118B,0x1AFF,0x6920,0x01C0,0xF21A,0xF013,0x803F
	.hword 0x7F06,0x206A,0x206B,0x206C,0x4030,0x553C,0x6D53,0x6E30
	.hword 0x6E30,0x1934,0x346D,0xF221,0x3193,0x78BF,0x605C,0xFF01
	.hword 0x7FF6,0x01F0,0x01F0,0x01F0,0x01F0,0x01F0,0x01F0,0x01F0
	.hword 0xF0FE,0xF001,0xF001,0xF001,0xF001,0xF001,0x1001,0x070D
	.hword 0x241C,0x2406,0xCF57,0xE9F7,0x0770,0x2402,0xF0C3,0x103B
	.hword 0x0E0D,0x0D24,0x5724,0xF7CF,0x98EB,0x0770,0x2408,0x41F0
	.hword 0x0D10,0x2415,0x7314,0x5724,0xF7CF,0x70EB,0x0F07,0xF024

	.hword 0x1041,0x810D,0xC757,0x341B,0x201A,0x2419,0xF537,0xF787
	.hword 0x18FB,0x1620,0xF024,0x1041,0x574D,0x13C7,0x3023,0x0221
	.hword 0x1F6D,0x1724,0xF7F5,0x0EFB,0x201E,0x241C,0x41F0,0x8D10
	.hword 0xC757,0xCC29,0x3F00,0x6D12,0x2425,0xF5F7,0x0D10,0x2424
	.hword 0xF0F6,0x5041,0x577F,0x32CF,0x2BED,0xF7E7,0x0F10,0x622A
	.hword 0xF024,0x1141,0x330D,0x3224,0xEF60,0xC631,0x8145,0x77F4
	.hword 0x402F,0xF02D,0x2141,0x388D,0x2437,0x0037,0x58B1,0x36DF
	.hword 0x8125,0xF7F4,0x0F10,0xF0C5,0x1141,0x3B8D,0x3A24,0xF1A0

	.hword 0xF039,0xC37F,0x83F0,0x0781,0x2443,0x2442,0xCF57,0xF530
	.hword 0x3F3C,0xF044,0x507B,0x180B,0x1981,0x3E01,0x1E24,0x243D
	.hword 0x223C,0xD70D,0xF0CF,0x9003,0x3007,0x4000,0x2448,0x2447
	.hword 0x2446,0x3E45,0x4424,0x3F40,0xCFD7,0xE357,0x03F0,0x7F30
	.hword 0x074D,0x4C24,0x4B20,0xB024,0x977F,0x57CF,0xCBE3,0x03F0
	.hword 0x7F30,0x2C4D,0x3F00,0xB02C,0xF07F,0xC003,0x03F0,0xFF50
	.hword 0x2C48,0x2C47,0x2C46,0xB0F9,0xF0FF,0xF003,0x5003,0x1AFF
	.hword 0x2701,0xF020,0xFF7F,0x03F0,0x03F0,0x7FF1,0x7FF0,0x03F0

	.hword 0x7FF0,0x7F90,0xCDB7,0x533C,0xF074,0xF073,0x917F,0x97FF
	.hword 0x57CB,0x3E74,0x7456,0x73F0,0x0770,0x9B17,0xFFD0,0xC977
	.hword 0x3F5B,0x5A74,0x3F00,0x73F0,0x0770,0x1B18,0xFFD0,0xC977
	.hword 0x5F70,0x3F20,0x77F0,0x7FF0,0x2027,0x245E,0x5D43,0xBF42
	.hword 0x6464,0x6463,0x3F90,0x7770,0x3F36,0x4848,0x5805,0x480B
	.hword 0x7F30,0x411C,0x1162,0x6134,0x3234,0x66FF,0x6564,0x3FA0
	.hword 0x8290,0x48EB,0xE839,0x1D0B,0x2528,0x8428,0x411C,0x3C62
	.hword 0x3C61,0x3F33,0x6468,0x6774,0x7FF0,0x6B31,0x6D0C,0xE836

	.hword 0x1D0F,0x2328,0x281F,0xBF00,0x5D2C,0xF02C,0xD0FF,0xB37F
	.hword 0xAD1C,0xA831,0x380F,0x1919,0x7328,0xD07F,0xD93F,0xEBF1
	.hword 0x17F8,0x831A,0x77FF,0x5BC9,0xC07C,0x98FF,0xEB42,0x2021
	.hword 0x0F58,0x735D,0x3830,0x086C,0x6B24,0x6A24,0x4D66,0x206F
	.hword 0x0470,0x7120,0x3020,0x5D34,0x72D3,0x0630,0x3073,0x3473
	.hword 0x0872,0xF83F,0x567F,0x7008,0x7074,0x0075,0x7601,0x7770
	.hword 0x20C1,0x2001,0x283F,0x2870,0x2871,0x7F78,0x7801,0x7930
	.hword 0x7930,0x7834,0x7FF8,0x028A,0x7A13,0x7B70,0x0120,0x807C

	.hword 0x6A3F,0x2804,0x286B,0x286C,0x7F70,0x307D,0x7E07,0x7E30
	.hword 0x7D34,0x7FF0,0x9382,0x3F90,0x3CFF,0x78FF,0x5EFF,0xF05B
	.hword 0xF07F,0x7B03,0x707F,0x5EFF,0xFEDB,0x7FF0,0x03F0,0xFF7A
	.hword 0x7FF0,0x7FF0,0x03F0,0xFF7A,0x7730,0x1B34,0xB03B,0x307F
	.hword 0x2B3F,0x0F7B,0x03E0,0xFF7A,0x303E,0x1B3C,0xB0BB,0xFB7F
	.hword 0xD013,0x7A01,0x30FF,0x3407,0x307F,0x3080,0x8390,0xBF10
	.hword 0x13FB,0xB0C2,0x9103,0x817F,0x8230,0x9030,0x2183,0xFBE0
	.hword 0xE013,0x7C03,0x2BFF,0x1B3C,0x1B3C,0x384F,0x0330,0x3C3F

	.hword 0x1738,0xF9D2,0x01F0,0xFF5E,0x8302,0x1120,0x1028,0x3028
	.hword 0x8403,0xF1F0,0xF08B,0x4B03,0x3D2B,0x857F,0x0920,0x2F28
	.hword 0x2C0A,0x0330,0xF286,0xF00B,0x6203,0x1927,0x0B91,0x2087
	.hword 0x2C03,0x0150,0x3288,0xA18B,0xFF87,0x03F0,0x7FB0,0xD599
	.hword 0x0BF1,0x03F0,0x2391,0x3FF0,0x0BB1,0xF0FF,0xB103,0xF023
	.hword 0x913F,0xF00B,0xD103,0xDA23,0x9191,0xFF0B,0x01F0,0x23F1
	.hword 0xD1FA,0x01F0,0xA3F0,0xAF73,0x1DF0,0x01F0,0xF0FF,0x743F
	.hword 0xF02F,0xF01D,0xF001,0xF03F,0xF07F,0xF001,0xFF01,0x7FF0

	.hword 0x7FF0,0x01F0,0x01F0,0x7FF0,0x01F0,0x01F0,0x7FF0,0xF0FF
	.hword 0xF07F,0xF001,0xF001,0xF07F,0xF001,0xF001,0xF07F,0xFE7F
	.hword 0x01F0,0x01F0,0x23D3,0x1DF0,0x01F0,0x3FF0,0x2F34,0x3C89
	.hword 0x8A20,0x3F24,0x01F0,0x01F0,0x23F3,0x2C0A,0x8B1E,0x4C20
	.hword 0x3FF0,0x01F0,0x01E0,0x2F54,0x3F8C,0x8D20,0x3FF0,0x01F0
	.hword 0x01F0,0x01F0,0x01F0,0x01F0,0xF0E5,0x0001,0x370F,0x76C5
	.hword 0x1774,0x74D3,0x7FF8,0x0898,0x217F,0x5820,0x5E0F,0x302B
	.hword 0x7130,0x240C,0x2470,0x2E6F,0x388D,0x7C05,0xBC74,0xD537

	.hword 0xF87A,0x087F,0x587F,0x780F,0x717F,0x0F2C,0x2C70,0x2C6F
	.hword 0x3F90,0x5BF7,0x7F70,0x0F58,0x7083,0x6C7F,0x6B2C,0x6A2C
	.hword 0x3F20,0x53F7,0xF0CF,0xD77F,0x3097,0xFB38,0xF0FF,0x7003
	.hword 0xD8FF,0x3F17,0x3030,0xFFFB,0x03F0,0x7FF0,0x7F79,0xFF7A
	.hword 0xD3F7,0x5ABC,0x2BEF,0x3F0A,0xBF39,0x9798,0x431B,0x3030
	.hword 0x7AF9,0xF7FF,0xDAD1,0xB0EB,0x187F,0x3023,0x7A38,0xE2FF
	.hword 0xD3F7,0xEBDA,0xFF70,0x308E,0x288E,0x3023,0x3078,0xFF7A
	.hword 0xD3F7,0xEBDA,0xFF70,0x308F,0x7C8F,0x1834,0x9123,0xF77F

	.hword 0xFAD1,0x19ED,0x3F0B,0x9E38,0x0377,0x382B,0xFF7E,0x53F7
	.hword 0x03F0,0xF33A,0x5E84,0x7724,0x8307,0xFF6E,0xD3F7,0x03F0
	.hword 0xF351,0x5C86,0x7724,0x850B,0x7FF0,0x03F0,0x73E2,0x2488
	.hword 0x77BF,0x8705,0x7F60,0xDB90,0x03F0,0xF3F0,0xC593,0xDBF0
	.hword 0xF0FF,0xD003,0x94F3,0xF005,0xF0DB,0xD003,0xF0F3,0xD07F
	.hword 0xFFDB,0x01F0,0xF390,0x7FF0,0xDBF0,0x01F0,0x01F0,0x7FB0
	.hword 0x3FF0,0xF0FF,0xF001,0xF001,0xF07F,0xF001,0xF001,0xF07F
	.hword 0xF07F,0xFF01,0x01F0,0x7FF0,0x01F0,0x01F0,0x7FF0,0x7FF0

	.hword 0x01F0,0x01F0,0xF0FF,0xF07F,0xF001,0xF001,0xF07F,0xF07F
	.hword 0xF001,0x3001,0xF10B,0xDBF2,0x01F0,0x01F0,0x0770,0x208A
	.hword 0x0389,0xF0D7,0xDBF2,0x01F0,0x01F0,0x0D10,0x204C,0x248B
	.hword 0xF2F1,0xF0DB,0xF001,0x3001,0x8D0B,0x8C24,0xD343,0xF2FF
	.hword 0xF0DB,0xF001,0xF001,0xF001,0xF001,0xF001,0xF001,0xC001
	.hword 0x01F0,0x01F0,0x7001,0x4A4A

	.section .rodata
	.align	2
	.global dungeon01Pal		@ 268 unsigned chars
	.hidden dungeon01Pal
dungeon01Pal:
	.hword 0x0010,0x0002,0x5F00,0xD96B,0xD601,0x005A,0x0200,0x0000
	.hword 0x0019,0x7FFF,0x0710,0x48DC,0x3002,0x0B07,0x306E,0x080F
	.hword 0xEF21,0x4142,0x1F10,0x00F9,0x4B5D,0x2710,0x0900,0xFF40
	.hword 0x197F,0x3000,0x1F26,0x2F30,0xE700,0x881C,0x0A21,0xD22E
	.hword 0x0042,0x5B7A,0x49CE,0x3D6B,0x7FFF,0x7084,0x6A0F,0x2945
	.hword 0x1031,0xAD3F,0x0035,0x5AD6,0x77BD,0x2D71,0x22DB,0x3600
	.hword 0xFF32,0x847F,0x6A10,0x0039,0x418C,0x49CE,0x3528,0x320A
	.hword 0x6A21,0x9045,0xDC3F,0x9632,0x1031,0x001F,0x3508,0x3529

	.hword 0x3D6B,0x3107,0x6620,0x1025,0x473F,0xAA1D,0x0D29,0x3600
	.hword 0x4691,0x537D,0x3EDA,0x4036,0x102E,0x4A5F,0x8C29,0xCE31
	.hword 0x0839,0x56B5,0x6F7B,0xB110,0x2108,0x0052,0xF929,0x9C3D
	.hword 0x4A73,0xDB45,0x2200,0x6210,0x7FFF,0x18C6,0x00E9,0x0B24
	.hword 0x4D2D,0x8C35,0xD641,0x5A10,0x739C,0x9F10,0x4DAA,0x5E2F
	.hword 0x9200,0xC76A,0x8A31,0x4D42,0x805B,0x9F10,0x1D67,0x0000
	.hword 0x252F,0x072F,0xD225,0x0A42,0x202E,0xF0D1,0xF001,0xFF01
	.hword 0x01F0,0x01F0,0x01F0,0x01F0,0x01F0,0x01F0,0x01F0,0x01F0

	.hword 0xF0F0,0xF001,0xF001,0xE001,0x7E01,0x7E7E

@}}BLOCK(dungeon01)
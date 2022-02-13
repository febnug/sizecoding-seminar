all: praktek.tap
	fuse --tape praktek.tap

praktek.bas.tap: praktek.bas
	zmakebas -o praktek.bas.tap -n praktek -a 10 praktek.bas

praktek.bin.tap: praktek.asm
	pasmo --name praktek --tap praktek.asm praktek.bin.tap

praktek.tap: praktek.bas.tap praktek.bin.tap
	cat praktek.bas.tap praktek.bin.tap > praktek.tap

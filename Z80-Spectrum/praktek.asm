org 0x8000

    xor a
    out (254), a

    ld  hl, 0x4000
    ld  (hl), 0x55
    ld  de, 0x4001
    ld  bc, 0x0100
    ldir
    ld  (hl), 0xaa
    ld  bc, 0x0100
    ldir
    ld  hl, 0x4000
    ld  de, 0x4200
    ld  bc, 0x1600
    ldir
frame_loop
    halt
    ld  de, 0x5800
    ld  b, 23
baris_loop
    ld  c, 32
karakter_loop
    ld  a, b
    xor c
    ld  (de), a
    inc de
    dec c
    jr nz, karakter_loop
    djnz baris_loop
    jr frame_loop

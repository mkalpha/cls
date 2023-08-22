    .assume adl=1
    .org 40000h

    jp start
    .align 64
    .db "MOS",0,1

start:
    push af
    push bc
    push de
    push ix
    push iy

    ld a,12         ; Load clear screen command
    rst.lil 0x10    ; execute

return:
    pop iy
    pop ix
    pop de
    pop bc
    pop af

    ld hl, 0        ; Load 0 in to hl before returning
    ret

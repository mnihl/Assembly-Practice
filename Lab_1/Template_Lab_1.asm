        DEVICE ZXSPECTRUM48
	SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
        org $8000               ; Program is located from memory address $8000 = 32768

begin:          di              ; Disable Interrupts
                ld sp,0         ; Set stack pointer to top of ram (RAMTOP)
        
;-------------------------------------------------------------------------------------------------
; Student Code
        ld a, 7
loop:
        out ($fe), a
        jr z, endofcode
        dec a
        ; cp 255 ; this is comparing with -1
        jr loop
; for for loops think of B, for arithmetic operations think of A
;-------------------------------------------------------------------------------------------------
endofcode:      jr endofcode    ; Infinite loop

        DEVICE ZXSPECTRUM48
	SLDOPT COMMENT WPMEM, LOGPOINT, ASSERTION
        org $8000               ; Program is located from memory address $8000 = 32768

begin:          di              ; Disable Interrupts
                ld sp,0         ; Set stack pointer to top of ram (RAMTOP)
        
;-------------------------------------------------------------------------------------------------
; Student Code

mainloop:
        ld a, 255
        out ($fe),a
        ; ld a, 3
        ; out ($fe), a
        ld b, 1 ; or -1
        add b
        ; ld a, 2 + 3
        out ($fe), a
        jr mainloop

;-------------------------------------------------------------------------------------------------
endofcode:      jr endofcode    ; Infinite loop

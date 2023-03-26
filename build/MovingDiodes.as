subtitle "Microchip MPLAB XC8 C Compiler v2.36 (Free license) build 20220127204148 Og9 "

pagewidth 120

	opt flic

	processor	18F4550
include "/opt/microchip/xc8/v2.36/pic/include/proc/18f4550.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 55 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "/opt/microchip/xc8/v2.36/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_set_led_i
	FNROOT	_main
	global	_TRISD5
_TRISD5	set	0x7CAD
	global	_TRISD4
_TRISD4	set	0x7CAC
	global	_TRISD3
_TRISD3	set	0x7CAB
	global	_TRISD2
_TRISD2	set	0x7CAA
	global	_TRISD1
_TRISD1	set	0x7CA9
	global	_TRISC2
_TRISC2	set	0x7CA2
	global	_TRISC1
_TRISC1	set	0x7CA1
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_PORTDbits
_PORTDbits	set	0xF83
	global	_TRISC0
_TRISC0	set	0x7CA0
	global	_TRISD0
_TRISD0	set	0x7CA8
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config PLLDIV = "1"
	config CPUDIV = "OSC1_PLL2"
	config USBDIV = "1"
	config FOSC = "HS"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRT = "OFF"
	config BOR = "OFF"
	config BORV = "3"
	config VREGEN = "OFF"
	config WDT = "OFF"
	config WDTPS = "32768"
	config CCP2MX = "ON"
	config PBADEN = "ON"
	config LPT1OSC = "OFF"
	config MCLRE = "OFF"
	config STVREN = "ON"
	config LVP = "ON"
	config ICPRT = "OFF"
	config XINST = "OFF"
	config CP0 = "OFF"
	config CP1 = "OFF"
	config CP2 = "OFF"
	config CP3 = "OFF"
	config CPB = "OFF"
	config CPD = "OFF"
	config WRT0 = "OFF"
	config WRT1 = "OFF"
	config WRT2 = "OFF"
	config WRT3 = "OFF"
	config WRTC = "OFF"
	config WRTB = "OFF"
	config WRTD = "OFF"
	config EBTR0 = "OFF"
	config EBTR1 = "OFF"
	config EBTR2 = "OFF"
	config EBTR3 = "OFF"
	config EBTRB = "OFF"
	file	"build/MovingDiodes.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_set_led_i:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	set_led_i@i
set_led_i@i:	; 2 bytes @ 0x0
	ds   2
	global	set_led_i@val
set_led_i@val:	; 1 bytes @ 0x2
	ds   1
??_set_led_i:	; 1 bytes @ 0x3
	ds   2
??_main:	; 1 bytes @ 0x5
	ds   2
	global	main@dir
main@dir:	; 2 bytes @ 0x7
	ds   2
	global	main@curr_i
main@curr_i:	; 2 bytes @ 0x9
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     11      11
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_set_led_i
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0     639
;!                                              5 COMRAM     6     6      0
;!                          _set_led_i
;! ---------------------------------------------------------------------------------
;! (1) _set_led_i                                            5     2      3     524
;!                                              0 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _set_led_i
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           5F      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              5F      B       B       1       11.6%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0       0       3        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!ABS                  0      0       0      18        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBIGSFRhh         6A      0       0      21        0.0%
;!BITBIGSFRhl         10      0       0      22        0.0%
;!BITBIGSFRl          22      0       0      23        0.0%
;!BIGRAM             7FF      0       0      24        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 55 in file "MovingDiodes.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  curr_i          2    9[COMRAM] int 
;;  dir             2    7[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_set_led_i
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"MovingDiodes.c"
	line	55
global __ptext0
__ptext0:
psect	text0
	file	"MovingDiodes.c"
	line	55
	
_main:
;incstack = 0
	callstack 30
	line	59
	
l841:
	bcf	c:(31904/8),(31904)&7	;volatile
	line	60
	bcf	c:(31905/8),(31905)&7	;volatile
	line	61
	bcf	c:(31906/8),(31906)&7	;volatile
	line	62
	bcf	c:(31912/8),(31912)&7	;volatile
	line	63
	bcf	c:(31913/8),(31913)&7	;volatile
	line	64
	bcf	c:(31914/8),(31914)&7	;volatile
	line	65
	bcf	c:(31915/8),(31915)&7	;volatile
	line	66
	bcf	c:(31916/8),(31916)&7	;volatile
	line	67
	bcf	c:(31917/8),(31917)&7	;volatile
	line	70
	bsf	((c:3970))^0f00h,c,0	;volatile
	line	74
	
l843:
	movlw	high(0)
	movwf	((c:main@curr_i+1))^00h,c
	movlw	low(0)
	movwf	((c:main@curr_i))^00h,c
	line	80
	movlw	high(01h)
	movwf	((c:main@dir+1))^00h,c
	movlw	low(01h)
	movwf	((c:main@dir))^00h,c
	line	87
	
l845:
	movff	(c:main@curr_i),(c:set_led_i@i)
	movff	(c:main@curr_i+1),(c:set_led_i@i+1)
	movlw	low(0)
	movwf	((c:set_led_i@val))^00h,c
	call	_set_led_i	;wreg free
	line	91
	
l847:
	movf	((c:main@dir))^00h,c,w
	addwf	((c:main@curr_i))^00h,c
	movf	((c:main@dir+1))^00h,c,w
	addwfc	((c:main@curr_i+1))^00h,c

	line	92
	
l849:
		movlw	9
	xorwf	((c:main@curr_i))^00h,c,w
iorwf	((c:main@curr_i+1))^00h,c,w
	btfss	status,2
	goto	u211
	goto	u210

u211:
	goto	l853
u210:
	line	94
	
l851:
	movlw	high(0)
	movwf	((c:main@curr_i+1))^00h,c
	movlw	low(0)
	movwf	((c:main@curr_i))^00h,c
	line	95
	goto	l857
	line	96
	
l853:
	btfsc	((c:main@curr_i+1))^00h,c,7
	goto	u220
	goto	u221

u221:
	goto	l857
u220:
	line	98
	
l855:
	movlw	high(08h)
	movwf	((c:main@curr_i+1))^00h,c
	movlw	low(08h)
	movwf	((c:main@curr_i))^00h,c
	line	102
	
l857:
	movff	(c:main@curr_i),(c:set_led_i@i)
	movff	(c:main@curr_i+1),(c:set_led_i@i+1)
	movlw	low(01h)
	movwf	((c:set_led_i@val))^00h,c
	call	_set_led_i	;wreg free
	line	105
	
l859:
	asmopt push
asmopt off
movlw  2
movwf	(??_main+0+0+1)^00h,c
movlw	69
movwf	(??_main+0+0)^00h,c
	movlw	170
u237:
decfsz	wreg,f
	bra	u237
	decfsz	(??_main+0+0)^00h,c,f
	bra	u237
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u237
asmopt pop

	goto	l845
	global	start
	goto	start
	callstack 0
	line	110
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_set_led_i

;; *************** function _set_led_i *****************
;; Defined at:
;;		line 18 in file "MovingDiodes.c"
;; Parameters:    Size  Location     Type
;;  i               2    0[COMRAM] int 
;;  val             1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	18
global __ptext1
__ptext1:
psect	text1
	file	"MovingDiodes.c"
	line	18
	
_set_led_i:
;incstack = 0
	callstack 30
	line	22
	
l831:
	goto	l835
	line	24
	
l28:
	line	25
	btfsc	(c:set_led_i@val)^00h,c,0
	bra	u125
	bcf	((c:3970))^0f00h,c,0	;volatile
	bra	u126
	u125:
	bsf	((c:3970))^0f00h,c,0	;volatile
	u126:

	line	26
	goto	l38
	line	27
	
l30:
	line	28
	btfsc	(c:set_led_i@val)^00h,c,0
	bra	u135
	bcf	((c:3970))^0f00h,c,1	;volatile
	bra	u136
	u135:
	bsf	((c:3970))^0f00h,c,1	;volatile
	u136:

	line	29
	goto	l38
	line	30
	
l31:
	line	31
	btfsc	(c:set_led_i@val)^00h,c,0
	bra	u145
	bcf	((c:3970))^0f00h,c,2	;volatile
	bra	u146
	u145:
	bsf	((c:3970))^0f00h,c,2	;volatile
	u146:

	line	32
	goto	l38
	line	33
	
l32:
	line	34
	btfsc	(c:set_led_i@val)^00h,c,0
	bra	u155
	bcf	((c:3971))^0f00h,c,0	;volatile
	bra	u156
	u155:
	bsf	((c:3971))^0f00h,c,0	;volatile
	u156:

	line	35
	goto	l38
	line	36
	
l33:
	line	37
	btfsc	(c:set_led_i@val)^00h,c,0
	bra	u165
	bcf	((c:3971))^0f00h,c,1	;volatile
	bra	u166
	u165:
	bsf	((c:3971))^0f00h,c,1	;volatile
	u166:

	line	38
	goto	l38
	line	39
	
l34:
	line	40
	btfsc	(c:set_led_i@val)^00h,c,0
	bra	u175
	bcf	((c:3971))^0f00h,c,2	;volatile
	bra	u176
	u175:
	bsf	((c:3971))^0f00h,c,2	;volatile
	u176:

	line	41
	goto	l38
	line	42
	
l35:
	line	43
	btfsc	(c:set_led_i@val)^00h,c,0
	bra	u185
	bcf	((c:3971))^0f00h,c,3	;volatile
	bra	u186
	u185:
	bsf	((c:3971))^0f00h,c,3	;volatile
	u186:

	line	44
	goto	l38
	line	45
	
l36:
	line	46
	btfsc	(c:set_led_i@val)^00h,c,0
	bra	u195
	bcf	((c:3971))^0f00h,c,4	;volatile
	bra	u196
	u195:
	bsf	((c:3971))^0f00h,c,4	;volatile
	u196:

	line	47
	goto	l38
	line	48
	
l37:
	line	49
	btfsc	(c:set_led_i@val)^00h,c,0
	bra	u205
	bcf	((c:3971))^0f00h,c,5	;volatile
	bra	u206
	u205:
	bsf	((c:3971))^0f00h,c,5	;volatile
	u206:

	line	50
	goto	l38
	line	22
	
l835:
	movff	(c:set_led_i@i),??_set_led_i+0+0
	movff	(c:set_led_i@i+1),??_set_led_i+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_set_led_i+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l865
	goto	l38
	
l865:
; Switch size 1, requested type "simple"
; Number of cases is 9, Range of values is 0 to 8
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
;	Chosen strategy is simple_byte

	movf ??_set_led_i+0+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l28
	xorlw	1^0	; case 1
	skipnz
	goto	l30
	xorlw	2^1	; case 2
	skipnz
	goto	l31
	xorlw	3^2	; case 3
	skipnz
	goto	l32
	xorlw	4^3	; case 4
	skipnz
	goto	l33
	xorlw	5^4	; case 5
	skipnz
	goto	l34
	xorlw	6^5	; case 6
	skipnz
	goto	l35
	xorlw	7^6	; case 7
	skipnz
	goto	l36
	xorlw	8^7	; case 8
	skipnz
	goto	l37
	goto	l38

	line	52
	
l38:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_led_i
	__end_of_set_led_i:
	signat	_set_led_i,8313
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end

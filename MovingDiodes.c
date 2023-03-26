#include <xc.h>
#include "MovingDiodes.h"


#define OUT 0;
#define IN 1;

#define LED1 PORTCbits.RC0
#define LED2 PORTCbits.RC1
#define LED3 PORTCbits.RC2
#define LED4 PORTDbits.RD0
#define LED5 PORTDbits.RD1
#define LED6 PORTDbits.RD2
#define LED7 PORTDbits.RD3
#define LED8 PORTDbits.RD4
#define LED9 PORTDbits.RD5


void main(void) 
{
    //setup
    //Uzstāda LED kā izvades
    TRISC0 = OUT;
    TRISC1 = OUT;
    TRISC2 = OUT;
    TRISD0 = OUT;
    TRISD1 = OUT;
    TRISD2 = OUT;
    TRISD3 = OUT;
    TRISD4 = OUT;
    TRISD5 = OUT;
    
    
    //loop    
    while(1)
    {
        
        
       __delay_ms(500);   
    }
    
}

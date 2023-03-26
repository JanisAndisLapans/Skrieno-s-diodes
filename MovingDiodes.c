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

#define REVERSE_BUTTON PORTDbits.RD6


void set_led_i(int i, unsigned char val)
{
    //Nomaina diodei ar indeksu i vērtību par val
    
    switch(i)
    {
        case 0:
            LED1 = val;
            break;
        case 1:
            LED2 = val;
            break;
        case 2:
            LED3 = val;
            break;
        case 3:
            LED4 = val;
            break;
        case 4:
            LED5 = val;
            break;
        case 5:
            LED6 = val;
            break;
        case 6:
            LED7 = val;
            break;
        case 7:
            LED8 = val;
            break;
        case 8:
            LED9 = val;
            break;
    }
}

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
    //Uzstāda pogu kā ievadi
    TRISD6 = IN;
    
    #define LED_ROW_LEN 9
    
    int curr_i = 0; // Indekss diodei, kura iepriekšēja ir ieslēgta no 0 lidz diozu skaits-1
    
    LED1 = 1; // Sākumā pirmais ir ieslēgts
    
    //Virziens skrienošo diožu kustībai
    #define RIGHT 1
    #define LEFT -1
    int dir = RIGHT;
    
    unsigned char button_enabled = 1; //Vai poga ir aktīva
    
    //loop    
    while(1)
    {
        //Vispirms izslēdz iepriekšējo diodi
        set_led_i(curr_i, 0);
        
        
        //Pāriet uz nākamo diodi (ja ir pāri skaita robežai iet uz sākumu, kas atkarīgs no virziena)
        curr_i += dir;
        if(curr_i == LED_ROW_LEN)
        {
            curr_i = 0;
        }
        else if(curr_i < 0)
        {
            curr_i = LED_ROW_LEN - 1;
        }
        
        //Ieslēdz nākamo diodi
        set_led_i(curr_i, 1);
        
        
        #define TIME_BETWEEN_MOVES 300 // Laiks starp diožu pārslēgšanu ms
        #define SLEEP_ITERS 30 // Cik bieži pārbauda vai poga ir nospiesta
                               // TIME_BETWEEN_MOVES jādalās ar to, lai laiks būtu precīzāks
                               //Ja SLEEP_ITERS ir lielāks poga ir jūtīgāka (ja nospiež pogu uz īsu brīdi
                               //citādāk var nereģistrēt, bet pārāk liels skaitlis var palēnināt darbību)
        
        for(unsigned i = 0; i<SLEEP_ITERS; i++)
        {
            if(REVERSE_BUTTON)
            {
                if(button_enabled)
                {
                    //Ja poga ir aktīva un nospiestra maina virzienu un pogu deaktivizē, lai nemainītu virzienu turot
                    dir = -dir;
                    button_enabled = 0;
                }
            }
            else // Atlaižot pogu tā aktivizējas atkal
            {
                button_enabled = 1;
            }
            __delay_ms(TIME_BETWEEN_MOVES/SLEEP_ITERS);
        }
        
        
    }
    
}

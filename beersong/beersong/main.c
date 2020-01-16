//
//  main.c
//  beersong
//
//  Created by FARIT GATIATULLIN on 05/09/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

//Declare global variable
float lastTemperature;

float fahrenheitFromCelcius (float cel)
{
    lastTemperature=cel;
    float fahr=cel*1.8+32.0;
    printf("%f Celcius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}
int main (int argc, const char*argv[])
          {
              float freezeInC=0;
              float freezeInF=fahrenheitFromCelcius(freezeInC);
              printf("Water freezes at %f degrees Fahrenheit. \n", freezeInF);
              printf("The last temperqture was %f.\n", lastTemperature);
              return EXIT_SUCCESS;
          }

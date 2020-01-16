//
//  main.c
//  BMICalc
//
//  Created by FARIT GATIATULLIN on 25/09/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#include <stdio.h>
#include <time.h>
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

typedef struct
{
    int tm_sec;
    int tm_min;
    int tm_hour;
    int tm_mday;
    int tm_mon;
    int tm_year;
    int tm_wday;
    int tm_yday;
    int tm_isdst;
    long tm_gmtoff;
    char *tm_zone;
} tm;

float bodyMassIndex(Person p)
{
    return p.weightInKilos/(p.heightInMeters*p.weightInKilos);
}

int main(int argc, const char * argv[]) {
    Person mikey;
    mikey.heightInMeters=1.7;
    mikey.weightInKilos=96;
    
    Person aaron;
    aaron.heightInMeters=1.97;
    aaron.weightInKilos=84;
    
    float bmi;
    bmi=bodyMassIndex(mikey);
    printf("mikey has a BMI of %.2f\n", bmi);
    
    bmi=bodyMassIndex(aaron);
    printf("aaron has a BMI of %.2f\n", bmi);
    
    long secondsSince1970=time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    long seconds4m=secondsSince1970+4000000;
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d-%d\n", now.tm_hour, now.tm_min, now.tm_sec,now.tm_year+1900);
    
    struct tm after;
    localtime_r(&seconds4m, &after);
    printf("The time is %d:%d:%d\n", after.tm_hour, after.tm_min, after.tm_sec);
    printf("In 4m seconds it will be %d-%d-%d\n", after.tm_mday, after.tm_mon, after.tm_year+1900);
    
    //printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
    //printf("mikey weighs %.d kilograms\n", mikey.weightInKilos);
    //printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
    //printf("aaron weighs %.d kilograms\n", aaron.weightInKilos);
    return 0;
}

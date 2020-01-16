//
//  main.m
//  BMITime
//
//  Created by FARIT GATIATULLIN on 28/10/2019.
//  Copyright © 2019 FARIT GATIATULLIN. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Create an array of BNREmployee objects
        NSMutableArray *employees=[[NSMutableArray alloc] init];
        
        //Create a dctionary of executivrs
        NSMutableDictionary *executives=[[NSMutableDictionary alloc] init];
        
        for (int i=0;i<10;i++) {
            //Create instance of BNEmployee
            BNREmployee *mikey=[[BNREmployee alloc] init];
            
            
            //Give the instance variables interesting values using setters
            //        NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
            //        [formatter setDateFormat:@"yyyy-MM-dd HH:mm"];
            //        NSDate *result = [formatter dateFromString:@"2000-12-26 04:26"];
            mikey.weightInKilos=90+i;
            mikey.heightInMeters=1.8-i/10.0;
            mikey.employeeID=i;
            //        mikey.hireDate=result;
            //Put the employee in the employees array
            [employees addObject:mikey];
            
            //Is this the first employee?
            
            if (i==0) {
                [executives setObject:mikey forKey:@"CEO"];
            }
            
            //Is this second employee?
            if (i==1) {
                [executives setObject:mikey forKey:@"CTO"];
            }
        }
        NSMutableArray *allAssets=[[NSMutableArray alloc]init];
        //Create 10 assets
        for (int i=0;i<10;i++) {
            //Create an asset
            BNRAsset *asset=[[BNRAsset alloc] init];
            
            //Give it an interesting label
            NSString *currentlabel=[NSString stringWithFormat:@"Laptop %d", i];
            asset.label=currentlabel;
            asset.resaleValue=350+i*17;
            
            //Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex=random()%[employees count];
            
            //Find that employee
            BNREmployee *randomEmployee=[employees objectAtIndex:randomIndex];
            
            //Assign the asset to the employee
            [randomEmployee addAsset:asset];
            [allAssets addObject:asset];
            //[randomEmployee removeAsset:asset];
        }
        NSSortDescriptor *voa=[NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        
        NSSortDescriptor *eid=[NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employees sortUsingDescriptors:@[voa, eid]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"AllAssets: %@", allAssets);
        
        //Print out the entire dictionary
        NSLog(@"executives: %@", executives);
        
        //Print out the CEO's information
        NSLog(@"CEO: %@", executives[@"CEO"]);
        executives=nil;
        
        NSPredicate *predicate=[NSPredicate predicateWithFormat:@"holder.valueOfAssets>70"];
        NSArray *toBeReclaimed=[allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed=nil;
        NSLog(@"Giving up ownership of arrays");
        allAssets=nil;
        employees=nil;
        //
        //        //Log the instance variables using getters
        //        float height=mikey.heightInMeters;
        //        int weight=mikey.weightInKilos;
        //        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        //        NSDate *date=mikey.hireDate;
        //        NSLog(@"%@ hired in %@", mikey, date);
        //        NSLog(@"Employee %u hired on %@", mikey.emloyeeID, mikey.hireDate);
        //
        //        //Log some values using custom methods
        //        float bmi=[mikey bodyMassIndex];
        //        double years=mikey.yearsOfEmployment;
        //        NSLog(@"BMI of %.2f, worked with us for %.2f years", bmi, years);
    }
    sleep(100);
    return 0;
}

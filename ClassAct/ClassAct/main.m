//
//  main.m
//  ClassAct
//
//  Created by FARIT GATIATULLIN on 25/12/2019.
//  Copyright © 2019 vwf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "objc/runtime.h"
#import "BNRTowel.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

NSArray *BNRHierarchyForClass(Class cls) {
//    Declare an array to holf the list of this class and all its superclasses, building a hierarchy
    NSMutableArray *classHierarchy=[NSMutableArray array];
    
//    Keep climbing the class hierarchy until we get to a class with no superclass
    for (Class c=cls; c!=Nil;c=class_getSuperclass(c)) {
        NSString *className=NSStringFromClass(c);
        [classHierarchy insertObject:className atIndex:0];
    }
    return classHierarchy;
}

NSArray *BNRMethodsForClass(Class cls) {
    unsigned int methodCount=0;
    Method *methodList=class_copyMethodList(cls, &methodCount);
    NSMutableArray *methodArray=[NSMutableArray array];
    
    for (int m=0;m<methodCount;m++) {
//        Get the current method
        Method currentMethod=methodList[m];
//        Get the selector for the current method
        SEL methodSelector=method_getName(currentMethod);
//        Add its string representation to the array
        [methodArray addObject:NSStringFromSelector(methodSelector)];
    }
    return methodArray;
}

NSArray *BNRInstancesForClass(Class cls) {
    
    unsigned int instanceCount=0;
    Ivar *instancesList = class_copyIvarList(cls, &instanceCount);
    
    NSMutableArray *instancesArray = [NSMutableArray array];
    
    for (int i = 0; i < instanceCount; i++) {
        Ivar currentInstance = instancesList[i];
        NSString *instanceName = [NSString stringWithUTF8String:ivar_getName(currentInstance)];
        [instancesArray addObject:instanceName];
    }
    
    free(instancesList);
    
    return instancesArray;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        You don't have an object to do the observing, but send the addObserver: message anyway, to kick off runtime updates
        BNRTowel *myTowel=[BNRTowel new];
        [myTowel addObserver:nil forKeyPath:@"location" options:NSKeyValueObservingOptionNew context:NULL];
        
//        Create an array of dictonaries, where each dictionary will end holding the class name, hierarchy, and method list for a given class
        NSMutableArray *runTimeClassesInfo=[NSMutableArray array];
        
        
// Declare variable to hold the number of registered classes
        unsigned int classCount=0;
        
//        Get a pointer to a list of all registered classes currently loaded by application
//        The number of registered classes is returned by reference
        Class *classList=objc_copyClassList(&classCount);
        
//        For each class in the list...
        for (int i=0;i<classCount;i++) {
            
//            Treat the classList as a C array to get a Class from it
            Class currentClass=classList[i];
            
//            Get a class's name as a string
            NSString *className=NSStringFromClass(currentClass);
            
////            Log the class's name
//            NSLog(@"Name #%d: %@", i, className);
            
            NSArray *hierarchy=BNRHierarchyForClass(currentClass);
            
            NSArray *methods=BNRMethodsForClass(currentClass);
            
            NSArray *instances=BNRInstancesForClass(currentClass);
            
            NSDictionary *classInfoDict=@{@"classname":className,
                                          @"hierarchy":hierarchy,
                                          @"methods":methods,
                                          @"instances":instances
                                          };
            [runTimeClassesInfo addObject:classInfoDict];
        }
//        We're done with the class list buffer, so free it
        free(classList);
        
//        Sort the classes info array aplhabetically by the name, and log it
        NSSortDescriptor *alphaAsc=[NSSortDescriptor sortDescriptorWithKey:@"classname" ascending:YES];
        
        NSArray *sortedArray=[runTimeClassesInfo sortedArrayUsingDescriptors:@[alphaAsc]];
        
        NSLog(@"There are %ld classes registered wuth this program's Runtime.", sortedArray.count);
        
        NSLog(@"%@", sortedArray);
    }
    return 0;
}

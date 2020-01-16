//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by FARIT GATIATULLIN on 04/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

//Declare a helper function that you will use to get a path to the location on disk where you can save to-do list
NSString *BNRDocPath(void);

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

-(void)addTask:(id)sender;

@end


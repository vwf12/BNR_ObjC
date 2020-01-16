//
//  Document.h
//  TahDoodle2
//
//  Created by FARIT GATIATULLIN on 16/12/2019.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;

@property (nonatomic) IBOutlet NSTableView *taskTable;

-(IBAction)addTask:(id)sender;
-(IBAction)deleteTask:(id)sender;

@end


//
//  ASXTableViewController.h
//  ASXTableViewController
//
//  Created by Abdullah Selek on 08/08/15.
//  Copyright (c) 2015 Abdullah Selek. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ASXCellObject.h"

@interface ASXTableViewController : NSControl

// data container and tableview outlet
@property (strong) NSMutableArray *dataSource;
@property (weak) IBOutlet NSTableView *tableView;

// add & delete methods
- (BOOL)addRow:(ASXCellObject *)cellObject;
- (BOOL)deleteRow:(NSInteger)rowIndex;

// tableview methods
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView;
- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn
            row:(int)rowIndex;
- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(int)rowIndex;

@end

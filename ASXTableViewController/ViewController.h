//
//  ViewController.h
//  ASXTableViewController
//
//  Created by Abdullah Selek on 08/08/15.
//  Copyright (c) 2015 Abdullah Selek. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ASXTableViewController.h"
#import "ASXCellObject.h"

@interface ViewController : NSViewController

// ui components
@property (weak) IBOutlet NSTableView *tableView;
@property (weak) IBOutlet NSTextField *nameTextField;
@property (weak) IBOutlet NSTextField *valueTextField;
@property (weak) IBOutlet NSButton *addButton;
@property (weak) IBOutlet NSButton *removeButton;

// button actions
- (IBAction)addButtonClicked:(id)sender;
- (IBAction)removeButtonClicked:(id)sender;

// tableview controller
@property (strong) IBOutlet ASXTableViewController *tableViewController;

@end


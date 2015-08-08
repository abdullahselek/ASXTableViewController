//
//  ViewController.m
//  ASXTableViewController
//
//  Created by Abdullah Selek on 08/08/15.
//  Copyright (c) 2015 Abdullah Selek. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)addButtonClicked:(id)sender {
    if([self.nameTextField stringValue].length > 0 && [self.valueTextField stringValue].length > 0) {
        ASXCellObject *cellObject = [[ASXCellObject alloc] initWithName:[self.nameTextField stringValue] value:[self.valueTextField stringValue]];
        [self.tableViewController addRow:cellObject];
        
        [self.nameTextField setStringValue:@""];
        [self.valueTextField setStringValue:@""];
    }
}

- (IBAction)removeButtonClicked:(id)sender {
    [self.tableViewController deleteRow:[self.tableView selectedRow]];
}

@end

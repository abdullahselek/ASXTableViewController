//
//  ASXTableViewController.m
//  ASXTableViewController
//
//  Created by Abdullah Selek on 08/08/15.
//  Copyright (c) 2015 Abdullah Selek. All rights reserved.
//

#import "ASXTableViewController.h"

static NSString *ASXTableColumnNameIdentifier = @"ASColumnNameID";
static NSString *ASXTableColumnValueIdentifier = @"ASColumnValueID";

@implementation ASXTableViewController

#pragma mark - LifeCycle

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)awakeFromNib {
    self.dataSource = [[NSMutableArray alloc] init];
}

#pragma mark - Add & Delete

- (BOOL)addRow:(ASXCellObject *)cellObject {
    if (!self.dataSource || !cellObject)
        return NO;
    
    [self.dataSource addObject:cellObject];
    [self.tableView reloadData];
    
    return YES;
}

- (BOOL)deleteRow:(NSInteger)rowIndex {
    if (!self.dataSource)
        return NO;
    
    if (rowIndex > -1 && [self.dataSource count] > 0) {
        [self.dataSource removeObjectAtIndex:rowIndex];
        [self.tableView reloadData];
        
        return YES;
    }
    
    return NO;
}

#pragma mark - TableView Methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    if (!self.dataSource)
        return 0;
    
    return [self.dataSource count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn
            row:(int)rowIndex {
    ASXCellObject *dataObject = (ASXCellObject *) [self.dataSource objectAtIndex:rowIndex];
    if (!dataObject) {
        NSLog(@"TableView: objectAtIndex : %d = NULL", rowIndex);
        return NULL;
    }
    
    if ([[tableColumn identifier] isEqualToString:ASXTableColumnNameIdentifier]) {
        return [dataObject name];
    }
    
    if ([[tableColumn identifier] isEqualToString:ASXTableColumnValueIdentifier]) {
        return [dataObject value];
    }
    
    assert(@"ERROR dropped through tableColumn identifiers");
    return NULL;
    
}

- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(int)rowIndex {
    ASXCellObject *dataObject = (ASXCellObject *) [self.dataSource objectAtIndex:rowIndex];
    
    if ([[tableColumn identifier] isEqualToString:ASXTableColumnNameIdentifier]) {
        [dataObject setName:(NSString *)object];
    }
    
    if ([[tableColumn identifier] isEqualToString:ASXTableColumnValueIdentifier]) {
        [dataObject setValue:(NSString *)object];
    }
}

#pragma mark DrawRect

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end

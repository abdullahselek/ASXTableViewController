//
//  ASXCellObject.h
//  ASXTableViewController
//
//  Created by Abdullah Selek on 08/08/15.
//  Copyright (c) 2015 Abdullah Selek. All rights reserved.
//
//
//  For now TableView Cell Object has 2 column
//  name and value
//  column number may increase and decrease on depend
//  you can add extra variable as property
//

#import <Foundation/Foundation.h>

@interface ASXCellObject : NSObject

@property (copy) NSString *name;
@property (copy) NSString *value;

- (id)init;
- (id)initWithName:(NSString *) nameStr value:(NSString *) valueStr;

@end

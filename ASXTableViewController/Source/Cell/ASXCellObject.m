//
//  ASXCellObject.m
//  ASXTableViewController
//
//  Created by Abdullah Selek on 08/08/15.
//  Copyright (c) 2015 Abdullah Selek. All rights reserved.
//

#import "ASXCellObject.h"

@implementation ASXCellObject

- (id)init {
    return [super init];
}

- (id)initWithName:(NSString *)nameStr value:(NSString *)valueStr {
    self = [super init];
    if(self) {
        self.name = nameStr;
        self.value = valueStr;
    }
    return self;
}

@end

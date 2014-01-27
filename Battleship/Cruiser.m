//
//  Cruiser.m
//  Battleship
//
//  Created by Robert Schneidman on 1/27/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "Cruiser.h"

@implementation Cruiser

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.size = 6;
    }
    return self;
}

@end

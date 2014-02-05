//
//  Map.m
//  Battleship
//
//  Created by Robert Schneidman on 2/5/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "Map.h"

@implementation Map

- (instancetype) init {
    self = [super init];
    if (self) {
        self.grid = [[NSArray alloc] init];
        for(int i = 0; i<30; i++){
            NSArray *array = [[NSArray alloc] init];
            [self.grid[i] addObject:array];
            for(int j=0; j<30; j++){
                NSArray *array1 = [[NSArray alloc] init];
                [self.grid[i][j] addObject:array1];
            }
        }
    }
    return self;
}

@end

//
//  Map.m
//  Battleship
//
//  Created by Robert Schneidman on 2/5/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "Map.h"
#define GRID_SIZE 30
#define BASE_LENGTH 10
#define BASE_START 10
#define BASE_END 19

@interface Map()

-(void) initializeBase:(NSString*) player;

@end

@implementation Map

- (instancetype) init {
    self = [super init];
    if (self) {
        self.grid = [[NSMutableArray alloc] init];
        for(int i = 0; i<GRID_SIZE; i++){
            NSMutableArray *array = [[NSMutableArray alloc] init];
            [self.grid insertObject:array atIndex:i ];
            for(int j = 0; j < GRID_SIZE; j++){
                Terrain t = WATER;
                [self.grid[i] insertObject:[NSNumber numberWithInt:t] atIndex:j];
            }
        }
        [self initializeBase:@"host"];
        [self initializeBase:@"join"];
    }
    return self;
}

-(void) initializeBase:(NSString*) player {
    int i;
    Terrain t;
    if ([player isEqualToString:@"host"]) {
        i = 0;
        t = HOST_BASE;
    }
    if ([player isEqualToString:@"join"]) {
        i = GRID_SIZE - 1;
        t = JOIN_BASE;
    }
    for(int j = BASE_START; j < BASE_START + BASE_LENGTH; j++) {
        [_grid[0] removeObjectAtIndex:j];
        [_grid[0] insertObject:[NSNumber numberWithInt:t] atIndex:j];
    }
}
@end

//
//  Ship.m
//  Battleship
//
//  Created by Robert Schneidman on 1/27/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "Ship.h"

@implementation Ship

- (NSArray *)blocks
{
    if (!self.blocks) self.blocks = [[NSMutableArray alloc] init];
    return self.blocks;
}

-(instancetype) initWithLocation:(Coordinate *)initialPosition {
    self = [super init];
    if (self) {
        _location.xCoord = initialPosition.xCoord;
        _location.yCoord = initialPosition.yCoord;
    }
    return self;
}

-(void)move:(Coordinate *)destination {
    _location.xCoord = destination.xCoord;
    _location.yCoord = destination.yCoord;
}

@end

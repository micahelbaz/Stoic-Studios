//
//  MineLayer.m
//  Battleship
//
//  Created by Robert Schneidman on 2/3/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "MineLayer.h"

@implementation MineLayer

- (instancetype)initWithLocation:(Coordinate *)initialPosition
{
    self = [super initWithLocation:initialPosition];
    if (self) {
        self.size = 2;
        self.speed = 6;
        self.shipArmourType = HEAVY_ARMOUR;
        for (int i = 0; i < self.size; i++) {
            ShipSegment* nextSeg = [[ShipSegment alloc] init];
            nextSeg.segmentArmourType = HEAVY_ARMOUR;
            self.blocks[i] = nextSeg;
        }
        self.radarRange.rangeHeight = 6;
        self.radarRange.rangeWidth = 5;
        self.radarRange.startRange = -2;
        self.numMines = 5;
    }
    return self;
}

@end

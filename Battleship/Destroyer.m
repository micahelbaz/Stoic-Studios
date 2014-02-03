//
//  Destroyer.m
//  Battleship
//
//  Created by Robert Schneidman on 1/27/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "Destroyer.h"

@implementation Destroyer

- (instancetype)initWithLocation:(Coordinate *)initialPosition
{
    self = [super initWithLocation:initialPosition];
    if (self) {
        self.size = 4;
        self.speed = 8;
        self.shipArmourType = NORMAL_ARMOUR;
        for (int i = 0; i < self.size; i++) {
            ShipSegment* nextSeg = [[ShipSegment alloc] init];
            nextSeg.segmentArmourType = NORMAL_ARMOUR;
            self.blocks[i] = nextSeg;
        }
        self.radarRange.rangeHeight = 8;
        self.radarRange.rangeWidth = 3;
        self.radarRange.startRange = 1;
    }
    return self;
}

@end

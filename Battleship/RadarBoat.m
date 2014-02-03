//
//  RadarBoat.m
//  Battleship
//
//  Created by Robert Schneidman on 2/3/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "RadarBoat.h"

@implementation RadarBoat

- (instancetype)initWithLocation:(Coordinate *)initialPosition
{
    self = [super initWithLocation:initialPosition];
    if (self) {
        self.size = 3;
        self.speed = 3;
        self.shipArmourType = NORMAL_ARMOUR;
        for (int i = 0; i < self.size; i++) {
            ShipSegment* nextSeg = [[ShipSegment alloc] init];
            nextSeg.armourType = NORMAL;
            self.blocks[i] = nextSeg;
        }
        self.radarRange.rangeHeight = 6;
        self.radarRange.rangeWidth = 3;
        self.radarRange.startRange = 1;
        self.isExtendedRadarOn = NO;
    }
    return self;
}

@synthesize isExtendedRadarOn;

- (BOOL) isExtendedRadarOn
{
    return self.isExtendedRadarOn;
}

- (void) setIsExtendedRadarOn:(BOOL)isExtendedRadarOn {
    if (self.isExtendedRadarOn) {
        self.speed = 0;
        self.radarRange.rangeHeight = 9;
        
    }
    else {
        self.speed = 3;
        self.radarRange.rangeHeight = 6;
    }
}
@end

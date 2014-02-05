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
            nextSeg.segmentArmourType = NORMAL_ARMOUR;
            self.blocks[i] = nextSeg;
        }
        [self.weapons addObject:[NSNumber numberWithInt:CANNON]];
        self.radarRange.rangeHeight = 6;
        self.radarRange.rangeWidth = 3;
        self.radarRange.startRange = 1;
        self.isExtendedRadarOn = NO;
        self.canonRange.rangeHeight = 5;
        self.canonRange.rangeWidth = 3;
        self.canonRange.startRange = -1;
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

-(void)rotate:(Rotation)destination{
    if(destination == RIGHT){
        if(self.location.direction == NORTH){
            self.location.xCoord+=1;
            self.location.yCoord-=1;
            self.location.direction=EAST;
        }
        if(self.location.direction == SOUTH){
            self.location.xCoord-=1;
            self.location.yCoord+=1;
            self.location.direction=WEST;
        }
        if(self.location.direction == WEST){
            self.location.xCoord+=1;
            self.location.yCoord+=1;
            self.location.direction=NORTH;
        }
        if(self.location.direction == EAST){
            self.location.xCoord-=1;
            self.location.yCoord-=1;
            self.location.direction=SOUTH;
        }
    }
    if(destination == LEFT){
        if(self.location.direction == NORTH){
            self.location.xCoord-=1;
            self.location.yCoord-=1;
            self.location.direction=WEST;
        }
        if(self.location.direction == SOUTH){
            self.location.xCoord+=1;
            self.location.yCoord+=1;
            self.location.direction=EAST;
        }
        if(self.location.direction == WEST){
            self.location.xCoord+=1;
            self.location.yCoord-=1;
            self.location.direction=SOUTH;
        }
        if(self.location.direction == EAST){
            self.location.xCoord-=1;
            self.location.yCoord+=1;
            self.location.direction=NORTH;
        }
    }
    if(destination == FULL){
        if(self.location.direction == NORTH){
            self.location.yCoord-=3;
            self.location.direction=SOUTH;
        }
        if(self.location.direction == SOUTH){
            self.location.yCoord+=3;
            self.location.direction=NORTH;
        }
        if(self.location.direction == WEST){
            self.location.xCoord+=3;
            self.location.direction=EAST;
        }
        if(self.location.direction == EAST){
            self.location.xCoord-=3;
            self.location.direction=WEST;
        }
    }
}

@end

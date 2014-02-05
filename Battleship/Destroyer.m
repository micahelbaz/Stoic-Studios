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
        [self.weapons addObject:[NSNumber numberWithInt:CANNON]];
        [self.weapons addObject:[NSNumber numberWithInt:TORPEDO]];
        self.radarRange.rangeHeight = 8;
        self.radarRange.rangeWidth = 3;
        self.radarRange.startRange = 1;
        self.canonRange.rangeHeight = 12;
        self.canonRange.rangeWidth = 9;
        self.canonRange.startRange = -4;
    }
    return self;
}

-(void)rotate:(Rotation)destination{
    if(destination == RIGHT){
        if(self.location.direction == NORTH){
            self.location.xCoord+=3;
            self.location.yCoord-=3;
            self.location.direction=EAST;
        }
        if(self.location.direction == SOUTH){
            self.location.xCoord-=3;
            self.location.yCoord+=3;
            self.location.direction=WEST;
        }
        if(self.location.direction == WEST){
            self.location.xCoord+=3;
            self.location.yCoord+=3;
            self.location.direction=NORTH;
        }
        if(self.location.direction == EAST){
            self.location.xCoord-=3;
            self.location.yCoord-=3;
            self.location.direction=SOUTH;
        }
    }
    if(destination == LEFT){
        if(self.location.direction == NORTH){
            self.location.xCoord-=3;
            self.location.yCoord-=3;
            self.location.direction=WEST;
        }
        if(self.location.direction == SOUTH){
            self.location.xCoord+=3;
            self.location.yCoord+=3;
            self.location.direction=EAST;
        }
        if(self.location.direction == WEST){
            self.location.xCoord+=3;
            self.location.yCoord-=3;
            self.location.direction=SOUTH;
        }
        if(self.location.direction == EAST){
            self.location.xCoord-=3;
            self.location.yCoord+=3;
            self.location.direction=NORTH;
        }
    }
}
@end

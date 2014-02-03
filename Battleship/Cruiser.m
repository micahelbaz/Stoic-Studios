//
//  Cruiser.m
//  Battleship
//
//  Created by Robert Schneidman on 1/27/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "Cruiser.h"

@interface Cruiser()



@end

@implementation Cruiser

- (instancetype)initWithLocation:(Coordinate *)initialPosition
{
    self = [super initWithLocation:initialPosition];
    if (self) {
        self.size = 5;
        self.speed = 10;
        self.shipArmourType = HEAVY_ARMOUR;
        for (int i = 0; i < self.size; i++) {
            ShipSegment* nextSeg = [[ShipSegment alloc] init];
            nextSeg.armourType = HEAVY;
            self.blocks[i] = nextSeg;
        }
        self.radarRange.rangeHeight = 10;
        self.radarRange.rangeWidth = 3;
        self.radarRange.startRange = 
    }
    return self;
}

-(void)rotate:(Rotation)destination{
    if(destination == RIGHT){
        if(self.location.direction == NORTH){
            self.location.xCoord+=3;
            self.location.yCoord-=3;
        }
        if(self.location.direction == SOUTH){
            self.location.xCoord-=3;
            self.location.yCoord+=3;
        }
        if(self.location.direction == WEST){
            self.location.xCoord+=3;
            self.location.yCoord+=3;
        }
        if(self.location.direction == EAST){
            self.location.xCoord-=3;
            self.location.yCoord-=3;
        }
    }
    if(destination == LEFT){
        if(self.location.direction == NORTH){
            self.location.direction-=3;
            self.location.direction-=3;
        }
        if(self.location.direction == SOUTH){
            self.location.direction+=3;
            self.location.direction+=3;
        }
        if(self.location.direction == )
    }
}

@end

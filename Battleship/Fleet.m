//
//  Fleet.m
//  Battleship
//
//  Created by Micah Elbaz on 2/5/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "Fleet.h"

@implementation Fleet

- (instancetype)initWithPlayerID:(int)playerID
{
    self = [super init];
    if(self){
        self.playerID = playerID;
        Coordinate
        Cruiser c1 = [[alloc] initWithLocation:];
        Cruiser c2 = [[alloc] initWithLocation:];
        Destroyer d1 = [[alloc] initWithLocation:];
        Destroyer d2 = [[alloc] initWithLocation:];
        Destroyer d3 = [[alloc] initWithLocation:];
        TorpedoBoat t1 = [[alloc] initWithLocation:];
        TorpedoBoat t2 = [[alloc] initWithLocation:];
        MineLayer m1 = [[alloc] initWithLocation:];
        MineLayer m2 = [[alloc] initWithLocation:];
        RadarBoat r1 = [[alloc] initWithLocation:];
        
        self.shipArray = [[NSArray alloc] initWithObjects:@[[c1, nil];
                                                            [shipArray addObject:c2]
                                                            [shipArray]
                                                            
    }
    return self;
}


@end

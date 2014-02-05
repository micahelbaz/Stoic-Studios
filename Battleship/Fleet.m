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
        Coordinate *cruiser1;
        Coordinate *cruiser2;
        Coordinate *destroyer1;
        Coordinate *destroyer2;
        Coordinate *destroyer3;
        Coordinate *torpedo1;
        Coordinate *torpedo2;
        Coordinate *mineLayer1;
        Coordinate *mineLayer2;
        Coordinate *radar1;
        if(playerID == 1){
            cruiser1 = [[Coordinate alloc] initWithXCoordinate:5 YCoordinate:19 initiallyFacing:EAST];
            cruiser2 = [[Coordinate alloc] initWithXCoordinate:5 YCoordinate:18 initiallyFacing:EAST];
            destroyer1 = [[Coordinate alloc] initWithXCoordinate:4 YCoordinate:17 initiallyFacing:EAST];
            destroyer2 = [[Coordinate alloc] initWithXCoordinate:4 YCoordinate:16 initiallyFacing:EAST];
            destroyer3 = [[Coordinate alloc] initWithXCoordinate:4 YCoordinate:15 initiallyFacing:EAST];
            torpedo1 = [[Coordinate alloc] initWithXCoordinate:3 YCoordinate:14 initiallyFacing:EAST];
            torpedo2 = [[Coordinate alloc] initWithXCoordinate:3 YCoordinate:13 initiallyFacing:EAST];
            mineLayer1 = [[Coordinate alloc] initWithXCoordinate:2 YCoordinate:12 initiallyFacing:EAST];
            mineLayer2 = [[Coordinate alloc] initWithXCoordinate:2 YCoordinate:11 initiallyFacing:EAST];
            radar1 = [[Coordinate alloc] initWithXCoordinate:3 YCoordinate:10 initiallyFacing:EAST];
        }
        else{
            cruiser1 = [[Coordinate alloc] initWithXCoordinate:24 YCoordinate:19 initiallyFacing:WEST];
            cruiser2 = [[Coordinate alloc] initWithXCoordinate:24 YCoordinate:18 initiallyFacing:WEST];
            destroyer1 = [[Coordinate alloc] initWithXCoordinate:25 YCoordinate:17 initiallyFacing:WEST];
            destroyer2 = [[Coordinate alloc] initWithXCoordinate:25 YCoordinate:16 initiallyFacing:WEST];
            destroyer3 = [[Coordinate alloc] initWithXCoordinate:25 YCoordinate:15 initiallyFacing:WEST];
            torpedo1 = [[Coordinate alloc] initWithXCoordinate:26 YCoordinate:14 initiallyFacing:WEST];
            torpedo2 = [[Coordinate alloc] initWithXCoordinate:26 YCoordinate:13 initiallyFacing:WEST];
            mineLayer1 = [[Coordinate alloc] initWithXCoordinate:27 YCoordinate:12 initiallyFacing:WEST];
            mineLayer2 = [[Coordinate alloc] initWithXCoordinate:27 YCoordinate:11 initiallyFacing:WEST];
            radar1 = [[Coordinate alloc] initWithXCoordinate:26 YCoordinate:10 initiallyFacing:WEST];
        }
        Cruiser *c1 = [[Cruiser alloc] initWithLocation: cruiser1];
        Cruiser *c2 = [[Cruiser alloc] initWithLocation: cruiser2];
        Destroyer *d1 = [[Destroyer alloc] initWithLocation: destroyer1];
        Destroyer *d2 = [[Destroyer alloc] initWithLocation: destroyer2];
        Destroyer *d3 = [[Destroyer alloc] initWithLocation: destroyer3];
        TorpedoBoat *t1 = [[TorpedoBoat alloc] initWithLocation: torpedo1];
        TorpedoBoat *t2 = [[TorpedoBoat alloc] initWithLocation: torpedo2];
        MineLayer *m1 = [[MineLayer alloc] initWithLocation: mineLayer1];
        MineLayer *m2 = [[MineLayer alloc] initWithLocation: mineLayer2];
        RadarBoat *r1 = [[RadarBoat alloc] initWithLocation: radar1];
        
        self.shipArray = [NSArray arrayWithObjects:c1,c2,d1,d2,d3,t1,t2,m1,m2,r1,nil];
    }
    return self;
}


@end

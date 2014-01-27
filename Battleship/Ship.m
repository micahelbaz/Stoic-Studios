//
//  Ship.m
//  Battleship
//
//  Created by Robert Schneidman on 1/27/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import "Ship.h"

@implementation Ship

-(void)move:(Coordinate *)destination {
    _location.xCoord = destination.xCoord;
    _location.yCoord = destination.yCoord;
}

@end

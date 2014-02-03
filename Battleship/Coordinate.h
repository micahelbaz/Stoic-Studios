//
//  Coordinate.h
//  Battleship
//
//  Created by Robert Schneidman on 1/27/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coordinate : NSObject

typedef enum directionType
{
    NORTH,
    SOUTH,
    EAST,
    WEST
} Direction;

@property int xCoord;
@property int yCoord;
@property Direction direction;

@end

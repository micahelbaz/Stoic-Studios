//
//  Ship.h
//  Battleship
//
//  Created by Robert Schneidman on 1/27/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coordinate.h"
#import "Range.h"
#import "ShipSegment.h"
@interface Ship : NSObject

typedef enum shipArmourType
{
    NORMAL_ARMOUR,
    HEAVY_ARMOUR
} ShipArmour;

typedef enum shipRotation
{
    LEFT,
    RIGHT,
    FULL
} Rotation;

typedef enum WeaponType
{
    HEAVY_CANNON,
    CANNON,
    TORPEDO
} Weapon;

@property (strong, nonatomic) NSMutableArray* blocks; //of ShipSegment
@property int size;
@property int speed;
@property ShipArmour shipArmourType;
@property (strong, nonatomic) NSMutableArray* weapons; //of Weapons
@property Coordinate *location;
@property Range *radarRange;

- (instancetype) initWithLocation: (Coordinate*) initialPosition;
- (void)move: (Coordinate *)destination;
- (void)repair;
- (void)rotate: (Rotation)destination;

@end


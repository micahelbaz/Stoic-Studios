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
#import "ShipArmourType.h"
#import "ShipRotation.h"
#import "WeaponType.h"

@interface Ship : NSObject

@property (strong, nonatomic) NSMutableArray* blocks; //of ShipSegment
@property int size;
@property int speed;
@property ShipArmour shipArmourType;
@property (strong, nonatomic) NSMutableArray* weapons; //of Weapons
@property Coordinate *location;
@property Range *radarRange;
@property Range *canonRange

- (instancetype) initWithLocation: (Coordinate*) initialPosition;
- (void)move: (Coordinate *)destination;
- (void)repair;
- (void)rotate: (Rotation)destination;

@end


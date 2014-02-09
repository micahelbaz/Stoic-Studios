//
//  Map.h
//  Battleship
//
//  Created by Robert Schneidman on 2/5/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TerrainType.h"
@interface Map : NSObject

@property (strong, nonatomic) NSMutableArray* grid;

-(instancetype) init;
@end

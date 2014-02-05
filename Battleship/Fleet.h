//
//  Fleet.h
//  Battleship
//
//  Created by Micah Elbaz on 2/5/2014.
//  Copyright (c) 2014 COMP-361. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fleet : NSObject

@property int playerID;
@property (strong, nonatomic) NSArray* shipArray;

- (instancetype)initWithPlayerID:(int)playerID;

@end

//
//  GameController.h
//  ThreeLow2
//
//  Created by Benson Huynh on 2016-01-13.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (strong, nonatomic) NSMutableArray *diceAvailable;
@property (strong, nonatomic) NSMutableSet *heldDice;

-(void)initializeDices;

- (void)rollDices;

- (void)holdDice;

- (void)printValues;

- (void)resetDice;

- (void)score;

@end

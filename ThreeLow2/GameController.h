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
@property (assign, nonatomic) int sumOfScore;
@property (assign, nonatomic) int timesRolled;

-(void)initializeDices;

- (void)rollDices;

- (void)resetDice;

- (void)holdDice:(int)diceIndex;

- (void)score;

-(int) rolled;

@end

//
//  GameController.m
//  ThreeLow2
//
//  Created by Benson Huynh on 2016-01-13.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init {
    self = [super init];
    if (self) {
        _diceAvailable = [NSMutableArray array];
        _heldDice = [NSMutableSet set];
        
        [self initializeDices];
        
    }
    return self;
}

- (void)initializeDices {
    
    for (int i = 0; i <= 5; i++) {
        
        Dice *aDice = [[Dice alloc] init];
        [self.diceAvailable addObject:aDice];
        
    }
}

- (void)rollDices {
    
    for (Dice *dice in self.diceAvailable) {
        
        [dice getRandomNumber];
        
        NSLog(@"%d", dice.currentValue);
        
        }
    }

- (void)holdDice {

    
}

- (void)printValues {
    
}

- (void)resetDice {
    
    [self.heldDice removeAllObjects];
    
}

- (void)score {
    
}

@end

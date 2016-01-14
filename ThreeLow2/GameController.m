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
        
        if (![self.heldDice containsObject:dice]) {
        
            [dice getRandomNumber];
            
            NSLog(@"%d", dice.currentValue);
            
            
        } else {
            NSLog(@"[%d]", dice.currentValue);
        }
    }
    for (Dice *dice in self.diceAvailable) {
        
        self.sumOfScore += dice.currentValue;
    }
    
    
    
}

- (void)resetDice {
    
    [self.heldDice removeAllObjects];
    
    [self initializeDices];
    
}

- (void)holdDice:(int)diceIndex {
    
    Dice *dice = [self.diceAvailable objectAtIndex:diceIndex];
    
    if ([self.heldDice containsObject:dice]) {
        
        [self.heldDice removeObject:dice];
        
        NSLog(@"Released dice %d", diceIndex);
        
    } else {
        
        [self.heldDice addObject:dice];
        
        NSLog(@"Dice %d is held", diceIndex);

    }

}



- (void)score {
    
    NSLog(@"Your score: %d", self.sumOfScore);
    
}

@end

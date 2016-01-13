//
//  Dice.m
//  ThreeLow2
//
//  Created by Benson Huynh on 2016-01-13.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)getRandomNumber {
    
    self.currentValue = (arc4random() % 6) + 1;
    
}


@end

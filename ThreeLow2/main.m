//
//  main.m
//  ThreeLow2
//
//  Created by Benson Huynh on 2016-01-13.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        InputCollector *userInput = [[InputCollector alloc] init];
        
        GameController *gameController = [[GameController alloc] init];
        
        while (YES) {
            
            NSString* input = [userInput inputForPrompt:@"select an option: quit or play"];
            
            if ([input isEqualToString: @"quit\n"]) {
                
                NSLog(@"Thanks for playing!");
                
                break;
                
            } else if ([input isEqualToString:@"play\n"]) {
                
                [gameController rollDices];
                
                while (YES) {
                    
                    NSString *prompt = @"\n roll - continue play\n reset - reset dices\n exit - exit to start\n";
                    
                    NSString* innerInput = [userInput inputForPrompt:prompt];
                    
                    if ([innerInput isEqualToString:@"roll\n"]) {
                        
                        [gameController rollDices];
                    }
                    
                        else if ([innerInput isEqualToString:@"reset\n"]) {
                            [gameController resetDice];
                            
                    }
                     else if ([innerInput isEqualToString:@"exit\n"]) {
                        
                        break;
                    }
                }
            }
        }
    }
}

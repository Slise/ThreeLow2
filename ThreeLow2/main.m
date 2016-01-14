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
        
        
        while (TRUE) {
            
            NSString* input = [userInput inputForPrompt:@"Select an option: quit or play"];
            
            if ([input isEqualToString: @"quit\n"]) {
                
                NSLog(@"Thanks for playing!");
                
                break;
                
            } else if ([input isEqualToString:@"play\n"]) {
                
                [gameController rollDices];
                
                //int i = 0;
                
                while (TRUE) {
                    
                    NSString *prompt = @"\n roll - continue play\n score - display score\n hold - select 0-4 to hold or unhold dice(s)\n rolled - display amount of rolls\n reset - reset dices\n exit - exit to restart game\n";
                    
                    NSString* innerInput = [userInput inputForPrompt:prompt];
                    
                    if ([innerInput isEqualToString:@"roll\n"]) {
                        //i++;
                        [gameController rollDices];
                    }
                    
                    else if ([innerInput isEqualToString:@"hold\n"]) {
                        innerInput = [userInput inputForPrompt:@"Which dice would you like to hold or release:"];
                        
                        int diceToHold = [innerInput intValue];
                        
                        [gameController holdDice:diceToHold];
                        
                    }

                    else if ([innerInput isEqualToString:@"score\n"]) {
                    
                        [gameController score];
                        
                    }
                    
                    else if ([innerInput isEqualToString:@"rolled\n"]) {
                        
                        [gameController rolled];
                        
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
    return 0;
}

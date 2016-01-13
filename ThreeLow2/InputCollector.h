//
//  InputCollector.h
//  ThreeLow2
//
//  Created by Benson Huynh on 2016-01-13.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (strong, nonatomic) NSString *userInput;

-(NSString *)inputForPrompt:(NSString *)promptString;

@end

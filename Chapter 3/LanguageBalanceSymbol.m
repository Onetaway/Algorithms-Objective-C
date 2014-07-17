//
//  LanguageBalanceSymbol.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/30/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "LanguageBalanceSymbol.h"
#import "StackNode.h"

static NSString *cCorrectSymbol = @"/*,*/,(,),[,],{,}";

@implementation LanguageBalanceSymbol

- (void)checkC
{
    NSString *leftComment = @"/*";
    
    NSArray *correctArray = [cCorrectSymbol componentsSeparatedByString:@","];
    StackNode *stack = [StackNode createStack];
    
    for (int i = 0; i < [correctArray count]; i++) {
        if ([correctArray[i] isEqualToString:@"/*"] ||
            [correctArray[i] isEqualToString:@"{"] ||
            [correctArray[i] isEqualToString:@"("] ||
            [correctArray[i] isEqualToString:@"["]) {
            
            [StackNode pushElement:[correctArray[i] intValue] inStack:stack];
            
        } else if ([correctArray[i] isEqualToString:@"*/"]) {
            
            StackNode *popElement = [StackNode popElement:stack];
            
            if (popElement.data != [leftComment intValue]) {
                NSLog(@"不匹配");
            }
        }
    }
}

- (void)checkPascal
{
    
}

@end













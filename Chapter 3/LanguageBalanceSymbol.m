//
//  LanguageBalanceSymbol.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/30/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "LanguageBalanceSymbol.h"
#import "StackNode.h"

static NSString *cCorrectSymbol = @"/*,[,(,),],{,},*/";
static NSString *cWrongSymbol = @"(,],(,),{,},/*,}";

@implementation LanguageBalanceSymbol

- (void)checkC
{
    NSArray *correctArray = [cCorrectSymbol componentsSeparatedByString:@","];
    NSArray *wrongArray = [cWrongSymbol componentsSeparatedByString:@","];
    StackNode *stack = [StackNode createStack];
    
    for (int i = 0; i < [correctArray count]; i++) {
        if ([correctArray[i] isEqualToString:@"/*"] ||
            [correctArray[i] isEqualToString:@"{"] ||
            [correctArray[i] isEqualToString:@"("] ||
            [correctArray[i] isEqualToString:@"["]) {
            
            [StackNode pushElement:[correctArray[i] intValue] inStack:stack];
        }
        
        if ([correctArray[i] isEqualToString:@"*/"] ||
            [correctArray[i] isEqualToString:@"}"] ||
            [correctArray[i] isEqualToString:@")"] ||
            [correctArray[i] isEqualToString:@"]"]) {
            
            [StackNode popElement:stack];
        }
    }
}

- (void)checkPascal
{
    
}

@end













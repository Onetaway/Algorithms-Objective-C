//
//  LanguageBalanceSymbol.h
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/30/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex 3.18 编写检测下列语言平衡符号的程序
//  a. Pascal ( begin/end, (), [], || )
//  b. C ( /* */, (), [], || )
// *c. 解释如何打印出错信息

#import <Foundation/Foundation.h>

@class Stack;

@interface LanguageBalanceSymbol : NSObject

@property (nonatomic, strong) Stack *stack;

- (void)checkPascal;
- (void)checkC;

@end

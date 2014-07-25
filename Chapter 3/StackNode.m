//
//  Stack.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/30/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "StackNode.h"

@interface StackNode ()
@property (nonatomic, assign,readwrite) int data;
@property (nonatomic, strong, readwrite) StackNode *next;
@end

@implementation StackNode

+ (BOOL)isEmpty:(StackNode *)stack
{
    OAAssert(stack, @"stack can't be nil");
    
    return stack.next == nil;
}

+ (StackNode *)createStack
{
    StackNode *stack = [[StackNode alloc] init];
    
    stack.next = nil;
    [StackNode makeEmpty:stack];
    
    return stack;
}

+ (void)makeEmpty:(StackNode *)stack
{
    OAAssert(stack, @"stack can't be nil");
    
    while (![StackNode isEmpty:stack]) {
        [StackNode popElement:stack];
    }
}

+ (void)pushElement:(int)element inStack:(StackNode *)stack
{
    OAAssert(stack, @"stack can't be nil");
    
    StackNode *dataNode = [[StackNode alloc] init];
    dataNode.data = element;
    dataNode.next = nil;
    
    dataNode.next = stack.next;
    stack.next = dataNode;
}

+ (int)topElement:(StackNode *)stack
{
    OAAssert(stack, @"stack can't be nil");
    OAAssert(stack.next, @"stack is empty");
    
    return stack.next.data;
}

+ (StackNode *)popElement:(StackNode *)stack
{
    OAAssert(stack, @"stack can't be nil");
    OAAssert(stack, @"stack is empty");
    
    StackNode *popElement = [[StackNode alloc] init];
    stack.next = popElement;
    stack.next = stack.next.next;
    
    return popElement;
}

+ (void)disposeStack:(StackNode *)stack
{
    OAAssert(stack, @"stack can't be nil");
    
    stack.next = nil;
}

@end



































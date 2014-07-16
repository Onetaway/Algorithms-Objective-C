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
    NSAssert(stack, @"stack can't be nil");
    
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
    NSAssert(stack, @"stack can't be nil");
    
    while (![StackNode isEmpty:stack]) {
        [StackNode popElement:stack];
    }
}

+ (void)pushElement:(int)element inStack:(StackNode *)stack
{
    NSAssert(stack, @"stack can't be nil");
    
    StackNode *dataNode = [[StackNode alloc] init];
    dataNode.data = element;
    dataNode.next = nil;
    
    dataNode.next = stack.next;
    stack.next = dataNode;
}

+ (int)topElement:(StackNode *)stack
{
    NSAssert(stack, @"stack can't be nil");
    NSAssert(stack.next, @"stack is empty");
    
    return stack.next.data;
}

+ (void)popElement:(StackNode *)stack
{
    NSAssert(stack, @"stack can't be nil");
    NSAssert(stack, @"stack is empty");
    
    stack.next = stack.next.next;
}

+ (void)disposeStack:(StackNode *)stack
{
    NSAssert(stack, @"stack can't be nil");
    
    stack.next = nil;
}

@end



































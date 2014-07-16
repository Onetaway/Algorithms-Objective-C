//
//  Stack.h
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/30/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StackNode : NSObject

@property (nonatomic, assign,readonly) int data;
@property (nonatomic, strong, readonly) StackNode *next;

/**
 *  Check whether the stack is empty
 *
 *  @param stack The stack need to check
 *
 *  @return YES if the stack is empty, NO if the stack isn't empty
 */
+ (BOOL)isEmpty:(StackNode *)stack;

/**
 *  Create a stack
 *
 *  @return The head node of the stack
 */
- (StackNode *)createStack;
+ (void)disposeStack:(StackNode *)stack;
+ (void)makeEmpty:(StackNode *)stack;

/**
 *  Push element to the stack.Note: The top is head node's next node.
 *
 *  @param element The element you want to insert
 *  @param stack   The head node of the stack. It is also the top pointer.
 */
+ (void)pushElement:(int)element inStack:(StackNode *)stack;
+ (int)topElement:(StackNode *)stack;
+ (void)popElement:(StackNode *)stack;

@end

























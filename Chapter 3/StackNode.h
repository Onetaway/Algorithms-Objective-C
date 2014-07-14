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

+ (BOOL)isEmpty:(StackNode *)stack;

@end

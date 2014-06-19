//
//  Selection_Problem.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/19/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "Selection_Problem.h"

@interface Selection_Problem ()

- (NSArray *) p_generateRandomNumber:(NSInteger)n;

@end

@implementation Selection_Problem

- (void)findBigK
{
    const NSInteger N = 100;
    const NSInteger k = N / 2;
    
    NSArray *randomArray = [self p_generateRandomNumber:N];
    NSMutableArray *readInArray = [NSMutableArray arrayWithCapacity:k];
    
    [randomArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [readInArray addObject:obj];
        
        if (idx == k) {
            *stop = YES;
        }
    }];
    
    
}

- (NSArray *)p_generateRandomNumber:(NSInteger)n
{
    NSMutableArray *array = [NSMutableArray array];
    
    for (int i = 0; i < n; i++) {
        NSNumber *number = [NSNumber numberWithUnsignedInt:arc4random()];
        
        [array addObject:number];
    }
    
    return [array copy];
}

@end


































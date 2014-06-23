//
//  MaxSubsequenceSum.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/22/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "MaxSubsequenceSum.h"

@interface MaxSubsequenceSum ()

- (NSInteger)p_maxSubSum:(NSArray *)array
               leftBound:(NSInteger)left
              rightBound:(NSInteger)rightBound;

@end

@implementation MaxSubsequenceSum

- (NSInteger)maxSubsequenceSum:(NSArray *)array count:(NSInteger)number
{
    return [self p_maxSubSum:array leftBound:0 rightBound:number - 1];
}

- (NSInteger)p_maxSubSum:(NSArray *)array
               leftBound:(NSInteger)left
              rightBound:(NSInteger)right
{
    NSInteger maxLeftSum = 0, maxRightSum = 0;
    NSInteger maxLeftBorderSum = 0, maxRightBorderSum = 0;
    NSInteger leftBorderSum = 0, rightBoundSum = 0;
    NSInteger center = 0;
    
    // Base Case
    if (left == right) {
        if (array[left] > 0) {
            return [array[left] integerValue];
        } else {
            return 0;
        }
    }
    
    center = (left + right) / 2;
    maxLeftSum = [self p_maxSubSum:array leftBound:left rightBound:center];
    maxRightSum = [self p_maxSubSum:array leftBound:center + 1 rightBound:right];
    
    return 1;
}

@end





























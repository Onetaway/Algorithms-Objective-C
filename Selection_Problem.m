//
//  Selection_Problem.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/19/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "Selection_Problem.h"

@interface Selection_Problem ()

- (NSArray *)p_generateRandomNumber:(NSInteger)count;
- (NSArray *)p_sortFromBigToSmall:(NSMutableArray *)array;
- (NSArray *)p_insertNumber:(NSNumber *)number
              ToReadInArray:(NSMutableArray *)readInArray;

@end

@implementation Selection_Problem

- (void)findBigK
{
    const NSInteger N = 6;
    const NSInteger k = N / 2;
    
    NSArray *randomArray = [self p_generateRandomNumber:N];
    NSMutableArray *readInArray = [NSMutableArray arrayWithCapacity:k];
    
    // 将randomArray 的前 k 个数读入 readInArray
    [randomArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (idx == k - 1) {
            *stop = YES;
        }
        
        [readInArray addObject:obj];
    }];
    
    [self p_sortFromBigToSmall:readInArray];
    
    for (int i = k + 1; i < randomArray.count; i++) {
        if ([randomArray[i] longLongValue] > [[readInArray lastObject] longLongValue]) {
            // 将randomArray[i] 插入到 readInArray中合适的位置
            [self p_insertNumber:randomArray[i] ToReadInArray:readInArray];
        }
    }
    
    NSLog(@"the Big K Number is: %@", [readInArray lastObject]);
    
}

#pragma mark - Private Methods
- (NSArray *)p_generateRandomNumber:(NSInteger)count
{
    NSMutableArray *array = [NSMutableArray array];
    
    for (int i = 0; i < count; i++) {
        NSNumber *number = [NSNumber numberWithUnsignedInt:arc4random() / 1000000];
        [array addObject:number];
    }
    
    return [array copy];
}

- (NSArray *)p_sortFromBigToSmall:(NSMutableArray *)array
{
    id temp = nil;
    
    for (int i = 0; i < array.count; i++) {
        for (int j = i + 1; j < array.count; j++) {
            if ([array[j] longLongValue] > [array[i] longLongValue]) {
                temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
    
    return [array copy];
}

- (NSArray *)p_insertNumber:(NSNumber *)number
              ToReadInArray:(NSMutableArray *)readInArray
{
    
    for (int i = 0; i < readInArray.count; i++) {
        if ([number longLongValue] > [readInArray[i] longLongValue]) {
            [readInArray insertObject:number atIndex:i];
            [readInArray removeLastObject];
        }
    }
    
    NSArray *array = [NSArray arrayWithArray:readInArray];
    return array;
}

@end


































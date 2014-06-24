//
//  WordPuzzle.m
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 6/23/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "WordPuzzle.h"

static const NSInteger number = 5;

@interface WordPuzzle ()

- (void)p_generateWordGrid;
- (NSNumber *)p_generateRandomCharacter;
- (void)p_startFind;

@end

@implementation WordPuzzle


- (void)findWord
{
    [self p_generateWordGrid];
}

- (void)p_generateWordGrid
{
    NSMutableArray *columnArray = [NSMutableArray arrayWithCapacity:number];
    
    for (int j = 0; j < number; j++) {
        NSMutableArray *rowArray = [NSMutableArray array];
        
        for (int i = 0; i < number; i++) {
            NSNumber *tmpNumber = [self p_generateRandomCharacter];
            [rowArray addObject:tmpNumber];
        }
        
        [columnArray addObject:rowArray];
    }
    
    NSLog(@"columnArray = %@", columnArray);
}

- (NSNumber *)p_generateRandomCharacter
{
    NSUInteger asc = 'a' + arc4random_uniform(26);
    return [NSNumber numberWithUnsignedInteger:asc];
}




@end





























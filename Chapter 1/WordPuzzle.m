//
//  WordPuzzle.m
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 6/23/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "WordPuzzle.h"

static const NSInteger row = 5;
static const NSInteger column = 5;

@interface WordPuzzle ()

// 生成单词表格
- (void)p_generateWordGrid;

@end

@implementation WordPuzzle

- (void)wordPuzzle
{
    
}

- (void)p_generateWordGrid
{
    char ch = 'a' + arc4random_uniform(26);
}

@end





























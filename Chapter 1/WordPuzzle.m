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

- (void)p_generateCharacterGrid;
- (NSArray *)p_generateWordGrid;
- (NSArray *)p_generateWordLibrary;

- (NSNumber *)p_generateRandomCharacter;
- (void)p_startFindWord:(NSArray *)wordGrid wordLibrary:(NSArray *)library;

- (void)p_rowSearchFromLeftToRight:(NSArray *)wordGrid
                       wordLibrary:(NSArray *)library;

- (void)p_rowSearchFromRightToLeft:(NSArray *)wordGrid
                       wordLibrary:(NSArray *)library;

- (void)p_columnSearchFromUpsideToBottom:(NSArray *)wordGrid
                             wordLibrary:(NSArray *)library;

- (void)p_columnSearchFromBottomToUpside:(NSArray *)wordGrid
                             wordLibrary:(NSArray *)library;

- (void)p_diagonalSearchFromLeftTopToRightBottom:(NSArray *)wordGrid
                                     wordLibrary:(NSArray *)library;

- (void)p_diagonalSearchFromRightBottomToLeftTop:(NSArray *)wordGrid
                                     wordLibrary:(NSArray *)library;

- (void)p_diagonalSearchFromLeftBottomToRightTop:(NSArray *)wordGrid
                                     wordLibrary:(NSArray *)library;

- (void)p_diagonalSearchFromRightTopToLeftBottom:(NSArray *)wordGrid
                                     wordLibrary:(NSArray *)library;

@end

@implementation WordPuzzle


- (void)findWord
{
    NSArray *wordGrid = [self p_generateWordGrid];
    NSLog(@"wordGrid = %@", wordGrid);
    
    NSArray *wordLibrary = [self p_generateWordLibrary];
    NSLog(@"wordLibrary = %@", wordLibrary);
    
    [self p_startFindWord:wordGrid wordLibrary:wordLibrary];
    
}

#pragma mark - Private Methods
- (void)p_generateCharacterGrid
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

- (void)p_startFindWord:(NSArray *)wordGrid wordLibrary:(NSArray *)library
{
    [self p_rowSearchFromLeftToRight:wordGrid wordLibrary:library];
    [self p_rowSearchFromRightToLeft:wordGrid wordLibrary:library];
    [self p_columnSearchFromUpsideToBottom:wordGrid wordLibrary:library];
    [self p_columnSearchFromBottomToUpside:wordGrid wordLibrary:library];
    [self p_diagonalSearchFromLeftBottomToRightTop:wordGrid wordLibrary:library];
    [self p_diagonalSearchFromRightBottomToLeftTop:wordGrid wordLibrary:library];
    [self p_diagonalSearchFromLeftTopToRightBottom:wordGrid wordLibrary:library];
    [self p_diagonalSearchFromRightTopToLeftBottom:wordGrid wordLibrary:library];
}

- (NSArray *)p_generateWordGrid
{
    NSArray *array0 = @[@"t", @"h", @"i", @"s"];
    NSArray *array1 = @[@"w", @"a", @"t", @"s"];
    NSArray *array2 = @[@"o", @"a", @"h", @"g"];
    NSArray *array3 = @[@"f", @"g", @"d", @"t"];
    
    NSArray *result = [NSArray arrayWithObjects:array0, array1, array2, array3, nil];
    return result;
}

- (NSArray *)p_generateWordLibrary
{
    NSArray *result = [NSArray arrayWithObjects:@"two", @"this", @"fat", @"that", nil];
    return result;
}

#pragma mark - 8 ways search
- (void)p_rowSearchFromLeftToRight:(NSArray *)wordGrid wordLibrary:(NSArray *)library
{
    for (int i = 0; i < wordGrid.count; i++) {
        NSMutableString *word = [NSMutableString string];
        
        for (NSInteger j = 0; j < [wordGrid[i] count]; j++) {
            [word appendString:wordGrid[i][j]];
            
            if ([library containsObject:word]) {
                NSLog(@"Row search from left to right find word: %@", word);
            }
        }
    }
}

- (void)p_rowSearchFromRightToLeft:(NSArray *)wordGrid wordLibrary:(NSArray *)library
{
    for (int i = 0; i < wordGrid.count; i++) {
        NSMutableString *word = [NSMutableString string];
        
        for (NSInteger j = [wordGrid[i] count] - 1; j >= 0; j--) {
            [word appendString:wordGrid[i][j]];
            
            if ([library containsObject:word]) {
                NSLog(@"Row search from right to left find word: %@", word);
            }
        }
    }
}

- (void)p_columnSearchFromUpsideToBottom:(NSArray *)wordGrid wordLibrary:(NSArray *)library
{
    for (NSInteger j = 0; j < [[wordGrid firstObject] count]; j++) {
        NSMutableString *wordUpToBottom = [NSMutableString string];
        
        for (NSInteger i = 0; i < wordGrid.count; i++) {
            [wordUpToBottom appendString:wordGrid[i][j]];
            
            if ([library containsObject:wordUpToBottom]) {
                NSLog(@"Row search from upside to bottom find word: %@", wordUpToBottom);
            }
        }
    }
}

- (void)p_columnSearchFromBottomToUpside:(NSArray *)wordGrid wordLibrary:(NSArray *)library
{
    for (NSInteger i = 0; i < [[wordGrid firstObject] count]; i++) {
        NSMutableString *wordBottomToUp = [NSMutableString string];
        
        for (NSInteger j = wordGrid.count - 1; j >= 0; j--) {
            [wordBottomToUp appendString:wordGrid[j][i]];
            
            if ([library containsObject:wordBottomToUp]) {
                NSLog(@"Row search from bottom to upside find word: %@", wordBottomToUp);
            }
        }
    }
}

- (void)p_diagonalSearchFromLeftTopToRightBottom:(NSArray *)wordGrid
                                     wordLibrary:(NSArray *)library
{
    NSMutableString *wordLeftTopToRightBottom = [NSMutableString string];
    for (NSInteger i = 0; i < wordGrid.count; i++) {
        [wordLeftTopToRightBottom appendString:wordGrid[i][i]];
        
        if ([library containsObject:wordLeftTopToRightBottom]) {
            NSLog(@"Diagonal search from left-top to right-bottom find word: %@", wordLeftTopToRightBottom);
        }
    }
}

- (void)p_diagonalSearchFromRightBottomToLeftTop:(NSArray *)wordGrid wordLibrary:(NSArray *)library
{
    NSMutableString *wordRightBottomToLeftTop = [NSMutableString string];
    for (NSInteger i = wordGrid.count - 1; i >= 0; i--) {
        [wordRightBottomToLeftTop appendString:wordGrid[i][i]];
        
        if ([library containsObject:wordRightBottomToLeftTop]) {
            NSLog(@"Diagonal search from right-bottom to left-top find word: %@", wordRightBottomToLeftTop);
        }
    }
}

- (void)p_diagonalSearchFromLeftBottomToRightTop:(NSArray *)wordGrid wordLibrary:(NSArray *)library
{
    NSMutableString *wordLeftBottomToRightTop = [NSMutableString string];
    for (NSInteger i = wordGrid.count - 1; i >= 0; i--) {
        [wordLeftBottomToRightTop appendString:wordGrid[i][wordGrid.count - 1 - i]];
        
        if ([library containsObject:wordLeftBottomToRightTop]) {
            NSLog(@"Diagonal search from left-bottom to right-top find word: %@", wordLeftBottomToRightTop);
        }
    }
}

- (void)p_diagonalSearchFromRightTopToLeftBottom:(NSArray *)wordGrid
                                     wordLibrary:(NSArray *)library
{
    NSMutableString *wordRightTopToLeftBottom = [NSMutableString string];
    for (NSInteger i = 0; i < wordGrid.count; i++) {
        [wordRightTopToLeftBottom appendString:wordGrid[i][wordGrid.count - 1 - i]];
        
        if ([library containsObject:wordRightTopToLeftBottom]) {
            NSLog(@"Diagonal search from right-top to left-bottom find word: %@", wordRightTopToLeftBottom);
        }
    }
}



@end





























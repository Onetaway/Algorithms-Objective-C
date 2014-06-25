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
    
    
    for (int i = 0; i < wordGrid.count; i++) {
        NSArray *tempRowArray = wordGrid[i];
        NSMutableString *mutableString = [NSMutableString string];
        
        for (int j = 0; j < tempRowArray.count; j++) {
            if (![library containsObject:tempRowArray[i]]) {
                
                
                [mutableString appendString:tempRowArray[j]];
                
            }
            
        }
        
        NSLog(@"row array[%d] contains word: %@", i, mutableString);
    }
    
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

@end





























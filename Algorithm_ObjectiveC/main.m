//
//  main.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/19/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import <Foundation/Foundation.h>

// Chapter 1
#import "Selection_Problem.h"
#import "WordPuzzle.h"

#pragma mark - Chapter 1
#pragma mark   Functions declarations
void selectionProblem();
void wordPuzzle();

#pragma mark - main
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //selectionProblem();
        wordPuzzle();
        
    }
    return 0;
}

#pragma mark - Functions Implements
void selectionProblem()
{
    Selection_Problem *select = [[Selection_Problem alloc] init];
    [select findBigK];
}

void wordPuzzle()
{
    WordPuzzle *wordPuzzle = [[WordPuzzle alloc] init];
    [wordPuzzle findWord];
}

















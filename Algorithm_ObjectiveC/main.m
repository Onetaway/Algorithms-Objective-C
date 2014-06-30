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

// Chapter 3
#import "LinkNode.h"
#import "ExchangeNeighbour.h"

#pragma mark - Chapter 1 Functions declarations
void selectionProblem();
void wordPuzzle();

#pragma mark - Chapter 3 Functions declarations
void printLinkLisr(); // Ex 3.1
void exchangeNeighbour(); // Ex3.3

#pragma mark - main
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //selectionProblem();
        //wordPuzzle();
        //printLinkLisr();
        exchangeNeighbour();
    }
    return 0;
}

#pragma mark - Chapter 1 Functions Implements
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

#pragma mark - Chapter 3 Functions Implements
void printLinkLisr()
{
    LinkNode *link = [[LinkNode alloc] init];
    LinkNode *linkTemp = [[LinkNode alloc] init];
    linkTemp = [link createLinkListByTailInsert];
    [link printLinkList:linkTemp];
}

void exchangeNeighbour()
{
    ExchangeNeighbour *singleExchange = [[ExchangeNeighbour alloc] init];
    [singleExchange exchangeNeighbourBySingleLinkList];
    
    ExchangeNeighbour *doubleExchange = [[ExchangeNeighbour alloc] init];
    [doubleExchange exchangeNeighbourByDoubleLinkList];
}













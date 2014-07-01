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
#import "LanguageBalanceSymbol.h"
#import "PrintLots.h"
#import "PrintLink.h"

#pragma mark - Chapter 1 Functions declarations
void selectionProblem();
void wordPuzzle();

#pragma mark - Chapter 3 Functions declarations
void printLinkList(); // Ex 3.1
void exchangeNeighbour(); // Ex 3.3
void checkLanguageBalanceSymbol(); // Ex 3.18
void printLots();   // Ex 3.2

#pragma mark - main
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //selectionProblem();
        //wordPuzzle();
        //printLinkList();  // Ex 3.1
        //exchangeNeighbour();
        //checkLanguageBalanceSymbol();
        printLots();
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
void printLinkList()
{
    PrintLink *printLink = [[PrintLink alloc] init];
    LinkNode *link = [printLink createLinkListByTailInsert];
    [printLink printLinkList:link];
}

void exchangeNeighbour()
{
    ExchangeNeighbour *singleExchange = [[ExchangeNeighbour alloc] init];
    [singleExchange exchangeNeighbourBySingleLinkList];
    
    ExchangeNeighbour *doubleExchange = [[ExchangeNeighbour alloc] init];
    [doubleExchange exchangeNeighbourByDoubleLinkList];
}

void checkLanguageBalanceSymbol()
{
    LanguageBalanceSymbol *check = [[LanguageBalanceSymbol alloc] init];
    [check checkPascal];
    [check checkC];
}

void printLots()
{
    PrintLots *pLots = [[PrintLots alloc] init];
    [pLots printLots];
}










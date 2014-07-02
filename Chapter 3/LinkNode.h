//
//  PrintLinkList.h
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 6/26/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

/**
 *
 *  Single link list definition and basic operations
 *
 */

#import <Foundation/Foundation.h>

@interface LinkNode : NSObject

@property (nonatomic, assign) int data;
@property (nonatomic, strong) LinkNode *next;

#pragma mark - Single Link List Basic Operations
+ (LinkNode *)makeEmpty:(LinkNode *)link;
+ (BOOL)isEmpty:(LinkNode *)link;
+ (BOOL)isLast:(LinkNode *)position inLink:(LinkNode *)link;
+ (LinkNode *)findElement:(int)x inLink:(LinkNode *)link;
+ (void)deleteElement:(int)x inLink:(LinkNode *)link;
+ (LinkNode *)findPreviousOfElement:(int)x inLink:(LinkNode *)link;

/**
 *  Insert a value in a single link
 *
 *  @param x        The value you want to insert
 *  @param link     The header node of the link
 *  @param position The position where you want to insert
 */
+ (void)insertElement:(int)x
               inLink:(LinkNode *)link
           atPosition:(LinkNode *)position;

/**
 *  Delete the single link list
 *
 *  @param link The header node of the single link list
 */
+ (void)deleteList:(LinkNode *)link;

/**
 *  Return the header node of a single link list
 *
 *  @param link The header node of the link
 *
 *  @return The header link of the node
 */
+ (LinkNode *)headerNode:(LinkNode *)link;

/**
 *  Return the first node of a single link list
 *
 *  @param link The header node of the link
 *
 *  @return The first node of the link.(Not the header node)
 */
+ (LinkNode *)firstNode:(LinkNode *)link;
+ (LinkNode *)advance:(LinkNode *)position;

/**
 *  Get the data of node in the position
 *
 *  @param position The position of node which you want to get the data value
 *  @param link     The header of the single link list
 *
 *  @return The data of the node at the given position
 */
+ (int)retrieve:(LinkNode *)position inLink:(LinkNode *)link;

// This is not single link operation
+ (void)printLinkList:(LinkNode *)link;


@end



















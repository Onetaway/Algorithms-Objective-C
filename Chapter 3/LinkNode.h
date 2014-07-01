//
//  PrintLinkList.h
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 6/26/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

/**
 *
 *  单链表定义及基本操作
 *
 */

#import <Foundation/Foundation.h>

@interface LinkNode : NSObject

@property (nonatomic, assign) NSInteger data;
@property (nonatomic, strong) LinkNode *next;

#pragma mark - 单链表的基本操作
- (LinkNode *)makeEmpty:(LinkNode *)link;
- (BOOL)isEmpty:(LinkNode *)link;
- (BOOL)isLast:(LinkNode *)position inLink:(LinkNode *)link;
- (LinkNode *)findElement:(int)x inLink:(LinkNode *)link;
- (void)deleteElement:(int)x inLink:(LinkNode *)link;
- (LinkNode *)findPreviousOfElement:(int)x inLink:(LinkNode *)link;
- (void)insertElement:(int)x
               inLink:(LinkNode *)link
           atPosition:(LinkNode *)position;

- (void)deleteList:(LinkNode *)link;
- (LinkNode *)headerNode:(LinkNode *)link;
- (LinkNode *)firstNode:(LinkNode *)link;

- (LinkNode *)advance:(LinkNode *)position;
- (NSInteger)retrieve:(LinkNode *)position inLink:(LinkNode *)link;
- (void)printLinkList:(LinkNode *)link;


@end



















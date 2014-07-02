//
//  PrintLinkList.m
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 6/26/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "LinkNode.h"

@interface LinkNode ()

@end

@implementation LinkNode


#pragma mark - 单链表的基本操作
+ (LinkNode *)makeEmpty:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    link.next = nil;
    return link;
}

+ (BOOL)isEmpty:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    return link.next == nil;
}

+ (BOOL)isLast:(LinkNode *)position inLink:(LinkNode *)link
{
    NSAssert(position, @"position can't be nil");
    NSAssert(link, @"link can't be nil");
    
    BOOL result = YES;
    
    if (!position.next) {
        result = YES;
    } else {
        result = NO;
    }
    
    return result;
}

+ (LinkNode *)findElement:(int)x inLink:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    LinkNode *p = link;
    
    while (p.next.data != x) {
        p = p.next;
    }
    
    return p;
}

+ (void)deleteElement:(int)x inLink:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    LinkNode *privious = [LinkNode findPreviousOfElement:x inLink:link];
    BOOL isLast = [LinkNode isLast:privious inLink:link];
    
    if (isLast) {
        privious.next = nil;
    } else {
        privious.next = privious.next.next;
    }
}

+ (LinkNode *)findPreviousOfElement:(int)x inLink:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    LinkNode *p = link;
    
    while (p.next && p.next.data != x) {
        p = p.next;
    }
    
    return p;
}

+ (void)insertElement:(int)x inLink:(LinkNode *)link atPosition:(LinkNode *)position
{
    NSAssert(link, @"link can't be nil");
    NSAssert(position, @"position can't be nil");
    
    LinkNode *insertedNode = [[LinkNode alloc] init];
    insertedNode.data = x;
    
    BOOL isLast = [LinkNode isLast:position inLink:link];
    
    
    if (isLast) {
        position.next = insertedNode;
        insertedNode.next = nil;
    }
    
    // 中间情形
    //LinkNode *insertPrevious = [LinkNode findPreviousOfElement:<#(int)#> inLink:<#(LinkNode *)#>]
}

+ (void)deleteList:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    link.next = nil;
}

+ (LinkNode *)headerNode:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    return link;
}

+ (LinkNode *)firstNode:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    LinkNode *firstNode = nil;
    
    if (link.next) {
        firstNode = link.next;
    } else {
        firstNode = nil;
    }
    
    return firstNode;
}

+ (LinkNode *)advance:(LinkNode *)position
{
    
}

+ (int)retrieve:(LinkNode *)position inLink:(LinkNode *)link
{
    NSAssert(position, @"position can't be nil");
    NSAssert(link, @"link can't be nil");
    
    LinkNode *p = link;
    
    while (p.next != position) {
        p = p.next;
    }
    
    return p.data;
}

+ (void)printLinkList:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    while (link.next) {
        NSLog(@"link%@ %ld", link, (long)link.next.data);
        link = link.next;
    }
    NSLog(@"-------------");
}







@end


























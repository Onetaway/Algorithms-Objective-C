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
- (LinkNode *)makeEmpty:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    link.next = nil;
    return link;
}

- (BOOL)isEmpty:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    return link.next == nil;
}

- (LinkNode *)findElement:(int)x inLink:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    LinkNode *p = link;
    
    while (p.next.data != x) {
        p = p.next;
    }
    
    return p;
}

- (NSInteger)retrieve:(LinkNode *)position inLink:(LinkNode *)link
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

+ (LinkNode *)firstNode:(LinkNode *)link
{
    NSAssert(link, @"link can't be nil");
    
    if (link.next) {
        return link.next;
    } else {
        return nil;
    }
}

@end


























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

- (LinkNode *)createEmptyLinkList
{
    LinkNode *head = [[LinkNode alloc] init];
    head.next = nil;
    
    return head;
}

- (LinkNode *)createLinkListByTailInsert
{
    LinkNode *tail = [[LinkNode alloc] init];
    LinkNode *head = [[LinkNode alloc] init];
    tail = head;
    
    for (NSInteger i = 0; i < 20; i++) {
        LinkNode *dataNode = [[LinkNode alloc] init];
        dataNode.data = i;
        
        tail.next = dataNode;
        tail = dataNode;
    }
    tail.next = nil;
    
    return head;
}

- (void)printLinkList:(LinkNode *)link
{
    if (!link) {
        NSLog(@"link is empty");
        return;
    }
    
    while (link.next) {
        NSLog(@"%ld", (long)link.data);
    }
}

@end


























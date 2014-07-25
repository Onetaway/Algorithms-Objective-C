//
//  PrintLink.m
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/1/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "PrintLink.h"

#import "LinkNode.h"

@implementation PrintLink

- (LinkNode *)createLinkListByTailInsert
{
    LinkNode *tail = [[LinkNode alloc] init];
    LinkNode *head = [[LinkNode alloc] init];
    head = tail;
    
    for (int i = 0; i < 15; i++) {
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
    OAAssert(link, @"link can't be nil");
    
    while (link.next) {
        NSLog(@"link%@ %ld", link, (long)link.next.data);
        link = link.next;
    }
}


@end

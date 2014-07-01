//
//  Intersect.m
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/1/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "Intersect.h"

#import "LinkNode.h"

@interface Intersect ()

- (LinkNode *)p_createLinkL1ByTail;
- (LinkNode *)p_createLinkL2ByTail;

@end

@implementation Intersect

- (void)intersect
{
    LinkNode *L1 = [self p_createLinkL1ByTail];
    LinkNode *L2 = [self p_createLinkL2ByTail];
    
    [LinkNode printLinkList:L1];
    [LinkNode printLinkList:L2];
    
}

#pragma mark - Private Methods
- (LinkNode *)p_createLinkL1ByTail
{
    LinkNode *head = [[LinkNode alloc] init];
    LinkNode *tail = [[LinkNode alloc] init];
    head = tail;
    
    for (NSInteger i = 0; i < 10; i++) {
        LinkNode *dataNode = [[LinkNode alloc] init];
        dataNode.data = i;
        
        tail.next = dataNode;
        dataNode.next = nil;
        tail = dataNode;
    }
    
    return head;
}

- (LinkNode *)p_createLinkL2ByTail
{
    LinkNode *head = [[LinkNode alloc] init];
    LinkNode *tail = [[LinkNode alloc] init];
    head = tail;
    
    for (NSInteger i = 5; i < 13; i++) {
        LinkNode *dataNode = [[LinkNode alloc] init];
        dataNode.data = i;
        
        tail.next = dataNode;
        dataNode.next = nil;
        tail = dataNode;
    }
    
    return head;
}

@end























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
- (LinkNode *)p_intersectLink1:(LinkNode *)l1 withLink2:(LinkNode *)l2;

@end

@implementation Intersect

- (void)intersect
{
    LinkNode *L1 = [self p_createLinkL1ByTail];
    LinkNode *L2 = [self p_createLinkL2ByTail];
    
    [LinkNode printLinkList:L1];
    [LinkNode printLinkList:L2];
    
    LinkNode *resultLink = [self p_intersectLink1:L1 withLink2:L2];
    
    [LinkNode printLinkList:resultLink];
    
}

#pragma mark - Private Methods
- (LinkNode *)p_createLinkL1ByTail
{
    LinkNode *head = [[LinkNode alloc] init];
    LinkNode *tail = [[LinkNode alloc] init];
    head = tail;
    
    for (int i = 0; i < 10; i++) {
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
    
    for (int i = 5; i < 13; i++) {
        LinkNode *dataNode = [[LinkNode alloc] init];
        dataNode.data = i;
        
        tail.next = dataNode;
        dataNode.next = nil;
        tail = dataNode;
    }
    
    return head;
}

- (LinkNode *)p_intersectLink1:(LinkNode *)l1 withLink2:(LinkNode *)l2
{
    LinkNode *resultHead = [[LinkNode alloc] init];
    LinkNode *resultTail = resultHead;
    
    LinkNode *p1 = l1;
    LinkNode *p2 = l2;
    
    
    
    while (p1.next && p2.next) {
        if (p1.next.data > p2.next.data) {
            p2 = p2.next;
        } else if (p1.next.data < p2.next.data) {
            p1 = p1.next;
        } else {
            
            LinkNode *dataNode = [[LinkNode alloc] init];
            dataNode.data = p1.next.data;
            
            resultTail.next = dataNode;
            resultTail = dataNode;
            
            p1 = p1.next;
            p2 = p2.next;
        }
        
    }
    
    return resultHead;
}

@end























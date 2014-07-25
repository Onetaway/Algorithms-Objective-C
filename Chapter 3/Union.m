//
//  Union.m
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/7/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "Union.h"

#import "LinkNode.h"

@interface Union ()

- (LinkNode *)p_createLinkL1ByTail;
- (LinkNode *)p_createLinkL2ByTail;
- (LinkNode *)p_unionLink1:(LinkNode *)l1 withLink2:(LinkNode *)l2;


@end

@implementation Union

- (void)unionLink
{
    LinkNode *l1 = [self p_createLinkL1ByTail];
    LinkNode *l2 = [self p_createLinkL2ByTail];
    
    [LinkNode printLinkList:l1];
    [LinkNode printLinkList:l2];
    
    LinkNode *resultLink = [self p_unionLink1:l1 withLink2:l2];
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


- (LinkNode *)p_unionLink1:(LinkNode *)l1 withLink2:(LinkNode *)l2
{
    OAAssert(l1, @"link 1 can't be nil");
    OAAssert(l2, @"link 2 can't be nil");
    
    LinkNode *pos1 = l1;
    LinkNode *pos2 = l2;
    LinkNode *resultLink = [[LinkNode alloc] init];
    LinkNode *resultTail = resultLink;
    resultLink.data = 0;
    resultLink.next = nil;
    
    while (pos1.next && pos2.next) {
        if (pos1.next.data < pos2.next.data) {
            resultTail.next = pos1.next;
            pos1 = pos1.next;
            resultTail = pos1;
        } else if (pos1.next.data > pos2.next.data) {
            resultTail.next = pos2.next;
            pos2 = pos2.next;
            resultTail = pos2;
        } else {
            resultTail.next = pos1.next;
            pos1 = pos1.next;
            pos2 = pos2.next;
            resultTail = pos1;
        }
    }
    
    while (pos1.next) {
        pos1 = pos1.next;
        resultTail.next = pos1;
        resultTail = resultTail.next;
    }
    
    while (pos2.next) {
        pos2 = pos2.next;
        resultTail.next = pos2;
        resultTail = resultTail.next;
    }
    
    return resultLink;
}

@end
























//
//  ExchangeNeighbour.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/26/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "ExchangeNeighbour.h"

#import "LinkNode.h"

@interface ExchangeNeighbour ()

// 使用尾插法创建单链表
- (LinkNode *)p_createSingleLinkListByTailInsert;
- (void)p_printSingleLinkList:(LinkNode *)link;
- (LinkNode *)p_exchangeSingleLinkList:(LinkNode *)link
                                 dataA:(NSInteger)dataA
                                 dataB:(NSInteger)dataB;
- (LinkNode *)p_findElementInSingleLinkList:(NSInteger)data list:(LinkNode *)link;

@end

@implementation ExchangeNeighbour

- (void)exchangeNeighbourBySingleLinkList
{
    NSLog(@"交换元素前:");
    LinkNode *beforeExchange = [self p_createSingleLinkListByTailInsert];
    [self p_printSingleLinkList:beforeExchange];
    
    NSLog(@"交换元素后:");
    LinkNode *afterExchange = [self p_exchangeSingleLinkList:beforeExchange
                                                       dataA:6
                                                       dataB:7];
    [self p_printSingleLinkList:afterExchange];
    
}

- (void)exchangeNeighbourByDoubleLinkList
{
    
}

#pragma mark - Private Methods
- (LinkNode *)p_createSingleLinkListByTailInsert
{
    LinkNode *head = [[LinkNode alloc] init];
    LinkNode *tail = [[LinkNode alloc] init];
    
    head = tail;
    
    for (int i = 0; i < 8; i++) {
        LinkNode *dataNode = [[LinkNode alloc] init];
        dataNode.data = i;
        
        tail.next = dataNode;
        tail = dataNode;
    }
    tail.next = nil;
    
    return head;
}

- (void)p_printSingleLinkList:(LinkNode *)link
{
    if (!link) {
        NSLog(@"error: link does not exist");
    }
    
    while (link.next) {
        NSLog(@"link data: %ld", (long)link.next.data);
        link = link.next;
    }
}

- (LinkNode *)p_exchangeSingleLinkList:(LinkNode *)link
                                 dataA:(NSInteger)dataA
                                 dataB:(NSInteger)dataB
{
    LinkNode *positionA = [self p_findElementInSingleLinkList:dataA list:link];
    LinkNode *positionB = [self p_findElementInSingleLinkList:dataB list:link];
    
    return link;
}

- (LinkNode *)p_findElementInSingleLinkList:(NSInteger)data list:(LinkNode *)link
{
    LinkNode *position = [[LinkNode alloc] init];
    position = link.next;
    
    while (position != nil && position.data != data) {
        position = position.next;
    }
    
    return position;
}

@end



























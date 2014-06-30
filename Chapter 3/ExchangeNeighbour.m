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
- (LinkNode *)p_findPriorItemOfNode:(LinkNode *)aNode inLinkList:(LinkNode *)link;
- (LinkNode *)p_findNextItemOfNode:(LinkNode *)aNode inLinkList:(LinkNode *)link;

@end

@implementation ExchangeNeighbour

- (void)exchangeNeighbourBySingleLinkList
{
    LinkNode *beforeExchange = [self p_createSingleLinkListByTailInsert];
    
    NSLog(@"交换元素前:");
    [self p_printSingleLinkList:beforeExchange];
    
    NSLog(@"交换元素后:");
    LinkNode *afterExchange = [self p_exchangeSingleLinkList:beforeExchange
                                                       dataA:3
                                                       dataB:4];
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
    // 找到要交换的两个元素
    LinkNode *positionA = [self p_findElementInSingleLinkList:dataA list:link];
    LinkNode *positionB = [self p_findElementInSingleLinkList:dataB list:link];
    
    // 找到 positionA 的前一个元素
    LinkNode *beforePositionA = [self p_findPriorItemOfNode:positionA inLinkList:link];
    
    // 找到 positionB 的后一个元素
    LinkNode *afterPositionB = [self p_findNextItemOfNode:positionB inLinkList:link];
    
    // 进行交换
    if (positionB.data == afterPositionB.data) { // 需要交换的是链表最后两个元素
        beforePositionA.next = positionB;
        positionB.next = positionA;
        positionA.next = nil;
    } else if (positionA.data == beforePositionA.data) { // 需要交换的是链表的前2个元素
        positionA.next = afterPositionB;
        positionB.next = positionA;
        link.next = positionB;
    } else {
        // 一般情形
        beforePositionA.next = positionB;
        positionB.next = positionA;
        positionA.next = afterPositionB;
    }
    
    
    
    
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

- (LinkNode *)p_findPriorItemOfNode:(LinkNode *)aNode inLinkList:(LinkNode *)link
{
    NSAssert(link.next, @"link can't be nil");
    NSAssert(aNode, @"aNode can't be nil");
    
    LinkNode *p = link.next;
    
    // aNode 是第一个结点
    if (link.next == aNode) {
        return aNode;
    }
    
    while (p.next && p.next.data != aNode.data) {
        p = p.next;
    }
    
    return p;
}

- (LinkNode *)p_findNextItemOfNode:(LinkNode *)aNode inLinkList:(LinkNode *)link
{
    NSAssert(aNode, @"aNode can't be nil");
    NSAssert(link, @"link can't be nil");
    
    LinkNode *p = link;
    
    // aNode 就是最后一个结点
    if (!aNode.next) {
        return aNode;
    }
    
    
    while (p.next && aNode.next.data != p.data) {
        p = p.next;
    }
    
    return p;
}

@end



























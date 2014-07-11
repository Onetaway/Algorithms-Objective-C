//
//  SelfAdjusting.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 7/11/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "SelfAdjusting.h"
#import "LinkNode.h"

@interface SelfAdjusting ()

// Link
- (LinkNode *)p_createLink:(long)num;
- (LinkNode *)p_insertNodeAtHead:(LinkNode *)link insertedNode:(LinkNode *)node;


@end

@implementation SelfAdjusting

- (void)selfAdjustingArray
{
    
}

- (void)selfAdjustingLink
{
    NSLog(@"插入 78 前:");
    LinkNode *link = [self p_createLink:13];
    [LinkNode printLinkList:link];
    
    LinkNode *insertedNode = [[LinkNode alloc] init];
    insertedNode.data = 78;
    link = [self p_insertNodeAtHead:link insertedNode:insertedNode];
    NSLog(@"插入 78 后:");
    [LinkNode printLinkList:link];

    
    
    NSLog(@"查找 9 前:");
    [LinkNode printLinkList:link];
    
    NSLog(@"查找 9 后:");
    LinkNode *findElement = [LinkNode findElement:9 inLink:link];
    [LinkNode deleteElement:9 inLink:link];
    [self p_insertNodeAtHead:link insertedNode:findElement];
    [LinkNode printLinkList:link];
    
}

#pragma mark - Private Methods
- (LinkNode *)p_createLink:(long)num
{
    NSAssert(num > 0, @"element num must > 0");
    
    LinkNode *head = [[LinkNode alloc] init];
    head.data = 0;
    LinkNode *tail = head;
    
    for (int i = 1; i < num; i++) {
        LinkNode *dataNode = [[LinkNode alloc] init];
        dataNode.data = i;
        dataNode.next = nil;
        
        tail.next = dataNode;
        tail = dataNode;
    }
    return head;
}

- (LinkNode *)p_insertNodeAtHead:(LinkNode *)link insertedNode:(LinkNode *)node
{
    NSAssert(link, @"link can't be nil");
    NSAssert(node, @"inserted node can't be nil");
    
    LinkNode *p = link;
    
    node.next = p.next;
    p.next = node;
    
    return link;
}

@end
































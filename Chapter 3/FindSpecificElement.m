//
//  FindSpecificElement.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 7/10/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "FindSpecificElement.h"
#import "LinkNode.h"

@interface FindSpecificElement ()

- (LinkNode *)p_createLink:(long)num;
- (LinkNode *)p_findSpecificElementRecursion:(LinkNode *)link element:(long)data;
- (LinkNode *)p_findSpecificElementNonRecursion:(LinkNode *)link element:(long)data;

@end

@implementation FindSpecificElement

- (void)findSpecificElement
{
    LinkNode *link = [self p_createLink:52407];
    //[LinkNode printLinkList:link];
    
    LinkNode *nonRecursion = [self p_findSpecificElementNonRecursion:link element:77];
    if (nonRecursion) {
        NSLog(@"非递归---data = %d", nonRecursion.data);
    } else {
        NSLog(@"非递归---没有找到该元素");
    }
    
    LinkNode *recurision = [self p_findSpecificElementRecursion:link element:17];
    if (recurision) {
        NSLog(@"递归---data = %d", recurision.data);
    } else {
        NSLog(@"递归---没有找到该元素");
    }
    
    
    
    
}

#pragma mark - Private Methods
- (LinkNode *)p_createLink:(long)num
{
    OAAssert(num > 0, @"element num must > 0");
    
    LinkNode *head = [[LinkNode alloc] init];
    LinkNode *tail = head;
    
    for (int i = 0; i < num; i++) {
        LinkNode *dataNode = [[LinkNode alloc] init];
        dataNode.data = i;
        dataNode.next = nil;
        
        tail.next = dataNode;
        tail = dataNode;
    }
    
    return head;
}

- (LinkNode *)p_findSpecificElementRecursion:(LinkNode *)link element:(long)data
{
    if (link.next.data == data) {
        return link.next;
    } else {
        return [self p_findSpecificElementRecursion:link.next element:data];
    }
    
    
}

- (LinkNode *)p_findSpecificElementNonRecursion:(LinkNode *)link element:(long)data
{
    OAAssert(link, @"link can't be nil");
    
    LinkNode *p = link;
    while (p.next && p.next.data != data) {
        p = p.next;
    }
    
    return p.next;
}

@end
























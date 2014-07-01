//
//  PrintLots.m
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/1/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "PrintLots.h"

#import "LinkNode.h"

@interface PrintLots ()

- (LinkNode *)p_createLinkLByTail;
- (LinkNode *)p_createLinkPByTail;
@end

@implementation PrintLots

- (void)printLots
{
    self.linkL = [self p_createLinkLByTail];
    self.linkP = [self p_createLinkPByTail];
    
    [LinkNode printLinkList:self.linkL];
    [LinkNode printLinkList:self.linkP];
    
    NSInteger count = 0;
    
    LinkNode *tmpLinkP = self.linkP;
    LinkNode *tmpLinkL = self.linkL;
    
    while (tmpLinkP.next && tmpLinkL.next) {
        
        if (tmpLinkP.next.data == count++) {
            NSLog(@"link L element: %ld", tmpLinkL.next.data);
            tmpLinkP = tmpLinkP.next;
        }
        tmpLinkL = tmpLinkL.next;
    }
}

#pragma mark - Private Methods
- (LinkNode *)p_createLinkLByTail
{
    LinkNode *head = [[LinkNode alloc] init];
    LinkNode *tail = [[LinkNode alloc] init];
    tail = head;
    
    for (int i = 0; i < 10; i++) {
        LinkNode *dataNode = [[LinkNode alloc] init];
        dataNode.data = i;
        
        tail.next = dataNode;
        dataNode.next = nil;
        tail = dataNode;
    }
    
    return head;
}

- (LinkNode *)p_createLinkPByTail
{
    LinkNode *head = [[LinkNode alloc] init];
    LinkNode *tail = [[LinkNode alloc] init];
    tail = head;
    
    for (int i = 0; i < 16; i += 2) {
        LinkNode *dataNode = [[LinkNode alloc] init];
        dataNode.data = i;
        
        tail.next = dataNode;
        dataNode.next = nil;
        tail = dataNode;
    }
    
    return head;
}

@end
































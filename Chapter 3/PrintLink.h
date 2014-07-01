//
//  PrintLink.h
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/1/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex 3.1: 编写一个打印出单链表所有元素的程序

#import <Foundation/Foundation.h>

@class LinkNode;

@interface PrintLink : NSObject

- (LinkNode *)createLinkListByTailInsert;
- (void)printLinkList:(LinkNode *)link;

@end

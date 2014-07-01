//
//  PrintLots.h
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/1/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex 3.2:给你一个链表L和另一个链表P，它们包含以升序排列的整数。操作PrintLots(L, P)将打印L中那些由P所指定的位置上的元素。例如，如果p = 1，3，4，6，那么，L中的第1、第3、第4、第6个元素被打印出来。写出过程PrintLots(L, P)，你应该只使用基本的表操作。该过程的运行时间是多少？

#import <Foundation/Foundation.h>

@class LinkNode;

@interface PrintLots : NSObject

@property (nonatomic, strong) LinkNode *linkL;
@property (nonatomic, strong) LinkNode *linkP;

- (void)printLots;

@end

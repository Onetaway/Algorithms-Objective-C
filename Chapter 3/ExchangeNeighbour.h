//
//  ExchangeNeighbour.h
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/26/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex3.3: 通过只调整指针（而不是数据）来交换两个相邻的元素，使用
// a. 单链表
// b. 双链表

#import <Foundation/Foundation.h>

@class LinkNode;

@interface ExchangeNeighbour : NSObject

@property (nonatomic, strong) LinkNode *singleLinkList;


- (void)exchangeNeighbourBySingleLinkList;
- (void)exchangeNeighbourByDoubleLinkList;

@end

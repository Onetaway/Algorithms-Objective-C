//
//  Union.h
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/7/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex 3.5: 给定两个已排序的表L1 和 L2，只使用基本的表操作编写计算 L1并L2 的过程
// 算法思路：先逐个遍历两个链表，将结点插入结果链表中，然后再将表中剩余的元素直接拼接到结果链表中（利用了L1和L2已经是有序的这一事实）

#import <Foundation/Foundation.h>

@interface Union : NSObject

- (void)unionLink;

@end

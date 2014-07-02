//
//  Intersect.h
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/1/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex 3.4: 给定两个已排序的表L1 和 L2，只使用基本的表操作编写计算 L1交L2 的过程
// 算法思路：从头开始遍历两个链表，若L1的元素 < L2对应位置上的元素，则继续遍历L1后一个元素；若L1的元素 > L2对应位置上的元素，则继续遍历L2后一个元素；若L1的元素 == L2对应位置的元素，则将该元素插入结果链表中，然后L1 L2 和结果链表的指针均向后移动一个位置。

#import <Foundation/Foundation.h>

@interface Intersect : NSObject

- (void)intersect;

@end

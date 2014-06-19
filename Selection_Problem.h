//
//  Selection_Problem.h
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 6/19/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// 编写一个程序解决选择问题, 令 k = N / 2,

// 问题描述：选择问题是, 设有 N 个数，要求从这 N 个数中找出第 k 个最大的数

// 算法思路：
// 1. 将 N 个数中的前 k 个数，以递减的顺序读入数组 A
// 2. 然后，从第 k + 1 个数开始，每次读入一个数；若这个数比数组 A 的最后一个数还小，则舍弃；若这个数比数组 A 的最后一个数大，则将这个数放入数组合适的位置
// 3. 直到将 N 个数读完之后，在数组 A 中的最后的元素，即为所求

#import <Foundation/Foundation.h>

@interface Selection_Problem : NSObject

- (void)findBigK;

@end





































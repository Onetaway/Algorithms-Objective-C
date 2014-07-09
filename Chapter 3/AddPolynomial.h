//
//  AddPolynomial.h
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/7/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex 3.6: 编写将两个多项式相加的函数，指数由高到低排列，不要毁坏输入数据。用一个链表实现，如果这两个多项式分别有 M 项和 N 项，那么你的程序的时间复杂度是多少？

// 注意点：当有结点需要相加的时候，需要重新生成一个新的结点进行添加到结果链表的操作，切记，不可直接使用poly1 或者 poly2 指针进行处理

#import <Foundation/Foundation.h>

@interface AddPolynomial : NSObject

@property (nonatomic, assign, readonly) int coefficient; // 系数
@property (nonatomic, assign, readonly) int exponent; // 指数
@property (nonatomic, strong, readonly) AddPolynomial *next;

- (void)addPolynomial;

@end

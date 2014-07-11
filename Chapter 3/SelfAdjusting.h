//
//  SelfAdjusting.h
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 7/11/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex 3.15:
// a. 写出自调整(self-adjusting)表的数组实现。自调整表如同一个规则的表，但是所有的插入都在表头进行，当一个元素被 Find 访问时，它就被移到表头而并不改变其余的项的相对顺序

// b. 写出自调整表的链表实现

#import <Foundation/Foundation.h>

@interface SelfAdjusting : NSObject

- (void)selfAdjustingArray;
- (void)selfAdjustingLink;

@end

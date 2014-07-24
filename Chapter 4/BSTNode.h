//
//  BST.h
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 7/24/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex 4.10: 写出实现基本二叉查找树的例程

#import <Foundation/Foundation.h>

@interface BSTNode : NSObject

@property (nonatomic, assign) int data;
@property (nonatomic, strong) BSTNode *left;
@property (nonatomic, strong) BSTNode *right;



@end

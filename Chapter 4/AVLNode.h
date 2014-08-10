//
//  AVLNode.h
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 8/10/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// 4.18 写出实现AVL单旋转和双旋转的其余过程

#import <Foundation/Foundation.h>

@interface AVLNode : NSObject

@property (nonatomic, assign) int element;
@property (nonatomic, strong) AVLNode *left;
@property (nonatomic, strong) AVLNode *right;
@property (nonatomic, assign) int height;


+ (AVLNode *)makeEmpty:(AVLNode *)tree;


+ (AVLNode *)findElement:(int)element inTree:(AVLNode *)tree;
+ (AVLNode *)findMinElementInTree:(AVLNode *)tree;
+ (AVLNode *)findMaxElementInTree:(AVLNode *)tree;

+ (AVLNode *)insertElement:(int)element inTree:(AVLNode *)tree;
+ (AVLNode *)deleteElement:(int)element inTree:(AVLNode *)tree;

+ (int)retrieveElement:(AVLNode *)position;

+ (int)nodeHeight:(AVLNode *)node;

@end






































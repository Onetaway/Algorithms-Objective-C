//
//  AVLNode.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 8/10/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "AVLNode.h"

@interface AVLNode ()

#pragma mark - AVL rotate operation

/**
 *  This function can be called only if node only has a left child. Perform a rotate between the node and its left child, update heights, then return new root.
 *
 *  @param node The parent node
 *
 *  @return The new root of the AVL tree
 */
+ (AVLNode *)singleLeftRotate:(AVLNode *)node;

+ (AVLNode *)singleRightRotate:(AVLNode *)node;


/**
 *  This function can be called only if node only has a left child and node's left child has a right child.
 *
 *  @param node The parent node
 *
 *  @return The new root of the AVL tree
 */
+ (AVLNode *)leftRightRotate:(AVLNode *)node;

+ (AVLNode *)rightLeftRotate:(AVLNode *)node;



@end

@implementation AVLNode

+ (int)nodeHeight:(AVLNode *)node
{
    if (!node) {
        return -1;
    } else {
        return node.height;
    }
}

#pragma mark - Private Methods
+ (AVLNode *)singleLeftRotate:(AVLNode *)node
{
    NSAssert(node, @"node can't be nil");
    
    AVLNode *leftSubNode = [[AVLNode alloc] init];
    
    leftSubNode = node.left;
    
    // Rotate operation
    node.left = leftSubNode.right;
    leftSubNode.right = node;
    
    // Update height
    node.height = MAX([AVLNode nodeHeight:node.left],
                      [AVLNode nodeHeight:node.right]) + 1;
    leftSubNode.height = MAX([AVLNode nodeHeight:leftSubNode.left], node.height) + 1;
    
    return leftSubNode;
}

+ (AVLNode *)singleRightRotate:(AVLNode *)node
{
    NSAssert(node, @"node can't be nil");
    
    AVLNode *rightSubNode = [[AVLNode alloc] init];
    
    rightSubNode = node.right;
    
    // right rotate operation
    node.right = rightSubNode.left;
    rightSubNode.left = node;
    
    // Update Height
    node.height = MAX([AVLNode nodeHeight:node.left],
                      [AVLNode nodeHeight:node.right]) + 1;
    rightSubNode.height = MAX([AVLNode nodeHeight:rightSubNode.right],
                              node.height) + 1;
    
    return rightSubNode;
}

+ (AVLNode *)leftRightRotate:(AVLNode *)node
{
    NSAssert(node, @"node can't be nil");
    
    // rotate with node's left child, and node's left child's right child
    node.left = [AVLNode singleRightRotate:node.left];
    
    return [AVLNode singleLeftRotate:node];
}

+ (AVLNode *)rightLeftRotate:(AVLNode *)node
{
    NSAssert(node, @"node can't be nil");
    
    node.right = [AVLNode singleLeftRotate:node.right];
    return [AVLNode singleRightRotate:node];
}

@end






































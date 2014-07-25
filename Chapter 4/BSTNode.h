//
//  BST.h
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 7/24/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

// Ex 4.10: 写出实现基本二叉查找树的例程 (Binary Search Tree)

// 概念：对于BST中的每一个结点x，x 的左子树的所有结点的值均小于x，而 x 的右子树的所有结点的值均大于x.

#import <Foundation/Foundation.h>

@interface BSTNode : NSObject

@property (nonatomic, assign) int data;
@property (nonatomic, strong) BSTNode *left;
@property (nonatomic, strong) BSTNode *right;

/**
 *  make a BST tree empty
 *
 *  @param tree The BST tree you want to make empty
 *
 *  @return The pointer to the empty tree
 */
+ (BSTNode *)makeEmpty:(BSTNode *)root;

/**
 *  Fine the element in the given BST tree
 *
 *  @param data The element you want to find
 *  @param tree The BST tree you want to search
 *
 *  @return The pointer to the element node, if not found ,return nil.
 */
+ (BSTNode *)findElement:(int)data inBSTTree:(BSTNode *)root;

/**
 *  Find the minium element in a BST tree (recursion version).
 *
 *  @param tree The BST tree you want to find
 *
 *  @return The pointer to the minium element.
 */
+ (BSTNode *)findMinElementRecursion:(BSTNode *)root;

/**
 *  Find the minium element in a BST tree (non recursion version).
 *
 *  @param tree The BST tree you want to find
 *
 *  @return The pointer to the minium element.
 */
+ (BSTNode *)findMinElementNonRecursion:(BSTNode *)root;

/**
 *  Find the max element in a BST tree (recursion version)
 *
 *  @param tree The BST tree you want to find
 *
 *  @return The pointer to the max element.
 */
+ (BSTNode *)findMaxElementRecursion:(BSTNode *)root;

/**
 *  Find the max element in a BST tree (non recursion version)
 *
 *  @param tree The BST tree you want to find
 *
 *  @return The pointer to the max element.
 */
+ (BSTNode *)findMaxElementNonRecursion:(BSTNode *)root;

/**
 *  Insert an element in a BST tree
 *
 *  @param data The element you want to insert
 *  @param tree The BST tree you want to insert
 *
 *  @return The pointer to the root node of inserted BST tree.
 */
+ (BSTNode *)insertElement:(int)data inBSTTree:(BSTNode *)root;

/**
 *  Delete an element in a BST tree.
 *
 *  @param data The element you want to delete.
 *  @param tree The BST tree.
 *
 *  @return The pointer to the root node of deleted BST tree.
 */
+ (BSTNode *)deleteElement:(int)data inBSTTree:(BSTNode *)root;

/**
 *  Get the node value in the given position in a given BST tree
 *
 *  @param position The position of the node which you want get the data value.
 *  @param tree     The given BST tree.
 *
 *  @return The data value of the node.
 */
+ (int)retrieveElementAtThePosition:(BSTNode *)position inBSTTree:(BSTNode *)root;


@end











































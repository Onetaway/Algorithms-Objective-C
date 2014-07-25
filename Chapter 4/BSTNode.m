//
//  BST.m
//  Algorithm_ObjectiveC
//
//  Created by Onet away on 7/24/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "BSTNode.h"

@implementation BSTNode

+ (BSTNode *)makeEmpty:(BSTNode *)root
{
    OAAssert(root, @"BST tree can't be nil");
    
    [BSTNode makeEmpty:root.left];
    [BSTNode makeEmpty:root.right];
    
    return root;
}

+ (BSTNode *)findElement:(int)data inBSTTree:(BSTNode *)root
{
    OAAssert(root, @"BST tree can't be nil");
    
    if (data < root.data) {
        return [BSTNode findElement:data inBSTTree:root.left];
    } else if (data > root.data) {
        return [BSTNode findElement:data inBSTTree:root.right];
    } else {
        return root;
    }
}

+ (BSTNode *)findMinElementRecursion:(BSTNode *)root
{
    OAAssert(root, @"BST tree can't be nil");
    
    if (!root.left) {
        return root;
    } else {
        return [BSTNode findMinElementRecursion:root.left];
    }
}

+ (BSTNode *)findMinElementNonRecursion:(BSTNode *)root
{
    OAAssert(root, @"BST tree can't be nil");
    
    BSTNode *position = root;
    
    while (position.left) {
        position = position.left;
    }
    
    return position;
}

+ (BSTNode *)findMaxElementRecursion:(BSTNode *)root
{
    OAAssert(root, @"BST tree can't be nil");
    
    if (!root.right) {
        return root;
    } else {
        return [BSTNode findMaxElementRecursion:root.right];
    }
}

+ (BSTNode *)findMaxElementNonRecursion:(BSTNode *)root
{
    OAAssert(root, @"BST tree can't be nil");
    
    BSTNode *position = root;
    
    while (position.right) {
        position = position.right;
    }
    
    return position;
}

/*+ (BSTNode *)insertElement:(int)data inBSTTree:(BSTNode *)root
{
    if (!root) {
        BSTNode *insertedNode = [[BSTNode alloc] init];
        insertedNode.data = 0;
        insertedNode.left = nil;
        insertedNode.right = nil;
        
        root = insertedNode;
        return root;
    } else if (data < root) {
        
    }
}

+ (BSTNode *)deleteElement:(int)data inBSTTree:(BSTNode *)root
{
    OAAssert(root, @"BST tree can't be nil");
}

+ (int)retrieveElementAtThePosition:(BSTNode *)position inBSTTree:(BSTNode *)root
{
    OAAssert(root, @"BST tree can't be nil");
    OAAssert(position, @"position can't be nil");
    
    
}*/

@end








































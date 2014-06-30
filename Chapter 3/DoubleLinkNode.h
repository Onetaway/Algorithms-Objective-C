//
//  DoubleLinkNode.h
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 6/30/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DoubleLinkNode : NSObject

@property (nonatomic, assign) int data;
@property (nonatomic, strong) DoubleLinkNode *prior;
@property (nonatomic, strong) DoubleLinkNode *next;


@end

//
//  AddPolynomial.m
//  Algorithm_ObjectiveC
//
//  Created by sanlen on 7/7/14.
//  Copyright (c) 2014 Onet away. All rights reserved.
//

#import "AddPolynomial.h"

@interface AddPolynomial ()

@property (nonatomic, assign, readwrite) int coefficient;
@property (nonatomic, assign, readwrite) int exponent;
@property (nonatomic, strong, readwrite) AddPolynomial *next;


- (AddPolynomial *)p_createPolynomiaOne;
- (AddPolynomial *)p_createPolynomiaTwo;
+ (void)p_printPolynomial:(AddPolynomial *)poly;
- (AddPolynomial *)p_addPolyOne:(AddPolynomial *)polyOne polyTwo:(AddPolynomial *)polyTwo;

@end

@implementation AddPolynomial

- (void)addPolynomial
{
    AddPolynomial *polyOne = [self p_createPolynomiaOne];
    AddPolynomial *polyTwo = [self p_createPolynomiaTwo];
    
    [AddPolynomial p_printPolynomial:polyOne];
    [AddPolynomial p_printPolynomial:polyTwo];
    
    AddPolynomial *polySum = [self p_addPolyOne:polyOne polyTwo:polyTwo];
    [AddPolynomial p_printPolynomial:polySum];
}

#pragma mark - Private Methods
- (AddPolynomial *)p_createPolynomiaOne
{
    AddPolynomial *head = [[AddPolynomial alloc] init];
    AddPolynomial *tail = head;
    
    for (int i = 14; i >= 0; i -= 2) {
        AddPolynomial *poly = [[AddPolynomial alloc] init];
        poly.coefficient = i;
        poly.exponent = i;
        
        tail.next = poly;
        tail = poly;
    }
    
    return head;
}

- (AddPolynomial *)p_createPolynomiaTwo
{
    AddPolynomial *head = [[AddPolynomial alloc] init];
    AddPolynomial *tail = head;
    
    for (int i = 24; i >= 0; i -= 4) {
        AddPolynomial *poly = [[AddPolynomial alloc] init];
        poly.coefficient = i;
        poly.exponent = i;
        
        tail.next = poly;
        tail = poly;
    }
    
    return head;
}

+ (void)p_printPolynomial:(AddPolynomial *)poly
{
    NSAssert(poly, @"polynomial can't be nil");
    
    while (poly.next) {
        NSLog(@"系数: %d, 指数:%d", poly.next.coefficient, poly.next.exponent);
        poly = poly.next;
    }
    NSLog(@"---------------");
}

- (AddPolynomial *)p_addPolyOne:(AddPolynomial *)polyOne polyTwo:(AddPolynomial *)polyTwo
{
    NSAssert(polyOne, @"Polynomial One can't be nil");
    NSAssert(polyTwo, @"Polynomial Two can't be nil");
    
    AddPolynomial *resultHead = [[AddPolynomial alloc] init];
    AddPolynomial *resultTail = resultHead;
    AddPolynomial *poly1 = polyOne;
    AddPolynomial *poly2 = polyTwo;
    
    while (poly1.next && poly2.next) {
        if (poly1.next.exponent < poly2.next.exponent) {
            resultTail.next = poly2.next;
            resultTail = resultTail.next;
            poly2 = poly2.next;
            
        } else if (poly1.next.exponent > poly2.next.exponent) {
            resultTail.next = poly1.next;
            resultTail = resultTail.next;
            poly1 = poly1.next;
            
        } else {
            
            
            AddPolynomial *addNode = [[AddPolynomial alloc] init];
            addNode.coefficient = poly1.next.coefficient + poly2.next.coefficient;
            addNode.exponent = poly1.next.exponent;
            
            resultTail.next = addNode;
            poly1 = poly1.next;
            poly2 = poly2.next;
            resultTail = addNode;
        }
    }
    
    
    return resultHead;
}

@end






































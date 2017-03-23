//
//  radius.m
//  cornerRadius
//
//  Created by Mr Lee on 2017/3/23.
//  Copyright © 2017年 lilei. All rights reserved.
//

#import "radius.h"

@implementation radius

+(CAShapeLayer*)cornerRadiusWithRect:(CGRect)rect
{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:rect.size];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = rect;
    //设置图形样子
    maskLayer.path = maskPath.CGPath;
    
    //maskLayer.strokeColor = [UIColor redColor].CGColor;
    
    return maskLayer;
}

@end

//
//  ViewController.m
//  cornerRadius
//
//  Created by Mr Lee on 2017/3/23.
//  Copyright © 2017年 lilei. All rights reserved.
//

#import "ViewController.h"
#import "radius.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *testView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    testView.center = self.view.center;
    
    testView.backgroundColor = [UIColor orangeColor];
    
    
    //加圆角
    testView.layer.mask=[radius cornerRadiusWithRect:testView.bounds];
    
    
    //加边框
    
    CGFloat r = 50;
    CGFloat startAngle = 0.0;
    CGFloat endAngle = M_PI * 2;
    
    UIBezierPath *pathDraw = [UIBezierPath bezierPathWithArcCenter:CGPointMake(50, 50) radius:r startAngle:startAngle endAngle:endAngle clockwise:YES];
    CAShapeLayer *layer = [[CAShapeLayer alloc]init] ;
    layer.path = pathDraw.CGPath;
    
    layer.lineWidth = 3;
    
    layer.fillColor  = [UIColor clearColor].CGColor;
    layer.strokeColor = [UIColor blackColor].CGColor;
    
    [testView.layer addSublayer:layer];
    
    [self.view addSubview:testView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  YView.m
//  01画线段和矩形
//
//  Created by 杨少伟 on 15/7/28.
//  Copyright (c) 2015年 YCompany. All rights reserved.
//

#import "YLineView.h"

@implementation YLineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //1.获取图形上下文信息
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.拼接图形（把新增的图形信息增加到图形上下文中）
    //设置一个起点
    CGContextMoveToPoint(ctx, 10, 10);
    //添加一条线段到100，100
    CGContextAddLineToPoint(ctx, 100, 100);
    
    //增加另一条线
    CGContextAddLineToPoint(ctx, 150, 50);
    
    //返回原点
    CGContextAddLineToPoint(ctx, 10, 10);
    
    //3.把图像上下文渲染到view上 stroke (空心)
    CGContextStrokePath(ctx);
    
}


@end

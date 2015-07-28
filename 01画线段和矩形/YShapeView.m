//
//  YShapeView.m
//  01画线段和矩形
//
//  Created by 杨少伟 on 15/7/28.
//  Copyright (c) 2015年 YCompany. All rights reserved.
//

#import "YShapeView.h"

@implementation YShapeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
//    drawTriAngle();
    
    draw4Rect();
    
}
/**
 *  画三角形
 */
void drawTriAngle()
{
    //1.获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //2.画线
    CGContextMoveToPoint(ctx, 20, 20);
    CGContextAddLineToPoint(ctx, 150, 150);
    CGContextAddLineToPoint(ctx, 100, 60);
    //连接起点和终点
    CGContextClosePath(ctx);
    //3.渲染
    CGContextStrokePath(ctx);
}

/**
 *  画一个矩形
 */
void draw4Rect()
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextAddRect(ctx, CGRectMake(10, 10, 100, 100));
    
    //渲染为空心
  // CGContextStrokePath(ctx);
    //渲染为实心
    CGContextFillPath(ctx);
}

@end

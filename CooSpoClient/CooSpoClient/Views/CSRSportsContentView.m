//
//  CSRSportsContentView.m
//  CooSpoClient
//
//  Created by 马远征 on 14-10-17.
//  Copyright (c) 2014年 马远征. All rights reserved.
//

#import "CSRSportsContentView.h"

@implementation CSRSportsContentView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // 绘制日期
    {
        [[UIColor blackColor]set];
        NSString *date = @"2014年9月27日";
        UIFont *font = [UIFont fontWithName:@"Helvetica" size:13];
        [date drawAtPoint:CGPointMake(10, 10) withFont:font];
    }
    // 绘制说明标记
    {
        [[UIColor colorWithRed:0.180 green:0.357 blue:0.388 alpha:1.0]set];
        NSString *drawString = @"卡路里";
        UIFont *font = [UIFont fontWithName:@"Helvetica" size:12];
        [drawString drawAtPoint:CGPointMake(rect.size.width - 50, 10) withFont:font];
        
        [[UIColor colorWithRed:0.443 green:0.627 blue:0.651 alpha:1.0]set];
        drawString = @"步数";
        [drawString drawAtPoint:CGPointMake(rect.size.width - 90, 10) withFont:font];
        
        UIImage *image = [UIImage imageNamed:@"cs_mark_deep_color_image"];
        [image drawAtPoint:CGPointMake(rect.size.width - 60, 13)];
        
        image = [UIImage imageNamed:@"cs_mark_color_image"];
        [image drawAtPoint:CGPointMake(rect.size.width - 100, 13)];
    }
    
    // 绘制虚线
    {
        CGContextRef currentContext = UIGraphicsGetCurrentContext();
        CGContextSaveGState(currentContext);
        
        [[UIColor colorWithRed:0.867 green:0.867 blue:0.867 alpha:1.0]set];
        CGMutablePathRef pathRef = CGPathCreateMutable();
        CGPathMoveToPoint(pathRef, NULL, 40, 60);
        CGPathAddLineToPoint(pathRef, NULL,rect.size.width-40, 60);
        for (int i = 1; i <= 5; i++)
        {
            CGPathMoveToPoint(pathRef, NULL, 40, 60+30*i);
            CGPathAddLineToPoint(pathRef, NULL,rect.size.width-40,60+30*i);
        }
        
        CGContextAddPath(currentContext, pathRef);
        CGContextSetLineWidth(currentContext, 2.0);
        CGContextDrawPath(currentContext, kCGPathStroke);
        
        CGPathRelease(pathRef);
        CGContextRestoreGState(currentContext);
    }
    // 绘制竖线
    {
        CGContextRef currentContext = UIGraphicsGetCurrentContext();
        CGContextSaveGState(currentContext);
        // 绘制左竖线
        [[UIColor colorWithRed:0.443 green:0.627 blue:0.651 alpha:1.0]set];
        CGMutablePathRef pathRef = CGPathCreateMutable();
        CGPathMoveToPoint(pathRef, NULL, 40, 60-1);
        CGPathAddLineToPoint(pathRef, NULL,40, 210+1);
        CGContextAddPath(currentContext, pathRef);
        CGContextSetLineWidth(currentContext, 2.0);
        CGContextDrawPath(currentContext, kCGPathStroke);
        
        CGPathRelease(pathRef);
        
        // 绘制右竖线
        [[UIColor colorWithRed:0.180 green:0.357 blue:0.388 alpha:1.0]set];
        pathRef = CGPathCreateMutable();
        CGPathMoveToPoint(pathRef, NULL, rect.size.width-40, 60-1);
        CGPathAddLineToPoint(pathRef, NULL,rect.size.width-40, 210+1);
        CGContextAddPath(currentContext, pathRef);
        CGContextSetLineWidth(currentContext, 2.0);
        CGContextDrawPath(currentContext, kCGPathStroke);
        CGPathRelease(pathRef);
        CGContextRestoreGState(currentContext);
    }
    // 绘制侧边短线
    {
        CGContextRef currentContext = UIGraphicsGetCurrentContext();
        CGContextSaveGState(currentContext);
        // 绘制左竖线
        [[UIColor colorWithRed:0.443 green:0.627 blue:0.651 alpha:1.0]set];
        CGMutablePathRef pathRef = CGPathCreateMutable();
        CGPathMoveToPoint(pathRef, NULL, 35, 60);
        CGPathAddLineToPoint(pathRef, NULL,40, 60);
        for (int i = 1; i <= 5; i++)
        {
            CGPathMoveToPoint(pathRef, NULL, 35, 60+30*i);
            CGPathAddLineToPoint(pathRef, NULL,40,60+30*i);
        }
        CGContextAddPath(currentContext, pathRef);
        CGContextSetLineWidth(currentContext, 2.0);
        CGContextDrawPath(currentContext, kCGPathStroke);
        CGPathRelease(pathRef);

        // 绘制右竖线
        [[UIColor colorWithRed:0.180 green:0.357 blue:0.388 alpha:1.0]set];
        pathRef = CGPathCreateMutable();
        CGPathMoveToPoint(pathRef, NULL, rect.size.width-35, 60);
        CGPathAddLineToPoint(pathRef, NULL,rect.size.width-40, 60);
        for (int i = 1; i <= 5; i++)
        {
            CGPathMoveToPoint(pathRef, NULL, rect.size.width-35, 60+30*i);
            CGPathAddLineToPoint(pathRef, NULL,rect.size.width-40,60+30*i);
        }
        CGContextAddPath(currentContext, pathRef);
        CGContextSetLineWidth(currentContext, 2.0);
        CGContextDrawPath(currentContext, kCGPathStroke);
        CGPathRelease(pathRef);

        CGContextRestoreGState(currentContext);
    }
}

@end

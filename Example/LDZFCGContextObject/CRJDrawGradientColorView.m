//
//  CRJDrawGradientColorView.m
//  CRJCGContextObject_Example
//
//  Created by zhuyuhui on 2020/9/4.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "CRJDrawGradientColorView.h"

#import <LDZFCGContextObject/LDZFCGContextObject.h>

@interface CRJDrawGradientColorView ()

@property (nonatomic, strong)  LdzfCGContext  *contextObject;

@end

@implementation CRJDrawGradientColorView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGFloat height = self.frame.size.height;
    //获取操作句柄
    _contextObject = [[LdzfCGContext alloc] initWithCGContext:UIGraphicsGetCurrentContext()
                                                         config:[LdzfCGContextConfig new]];
    
    //开始绘图
    for (int count = 0; count < 7; count++) {
        CGFloat lineHeight = arc4random() % (int)(height - 20);
        //绘制矩形
        [_contextObject contextConfig:nil drawFillBlock:^(LdzfCGContext *contextObject) {
            contextObject.currentConfig.fillColor = [LdzfRGBColor randomColor];
            [contextObject addRectPath:CGRectMake(count * 30, height - lineHeight, 15, lineHeight)];
        }];
        //绘制文字
        [_contextObject drawString:[NSString stringWithFormat:@"%.f",lineHeight / 10.f]
                           atPoint:CGPointMake(2 + count * 30, height - lineHeight - 20) withAttributes:nil];
    }
    
    
    
    
    
    
//    {
//        size_t  count             = 3;
//        CGFloat locations[]       = {0.0, 0.5, 1.0};
//        CGFloat colorComponents[] = {
//            //red, green, blue, alpha
//            0.254, 0.599, 0.82,  1.0,
//            0.192, 0.525, 0.75,  1.0,
//            0.096, 0.415, 0.686, 1.0};
//
//        LdzfGradientColor *gradientColor = [LdzfGradientColor gradientColorWithLocations:locations
//                                                                      components:colorComponents
//                                                                           count:count];
//
//        [_contextObject drawLinearGradientAtClipToRect:CGRectMake(0, 0, 10, self.frame.size.height)
//                                         gradientColor:gradientColor
//                                            startPoint:CGPointMake(0, 0)
//                                              endPoint:CGPointMake(0, self.frame.size.height)];
//    }
//
//    {
//        size_t  count             = 4;
//        CGFloat locations[]       = {0.0, 0.3, 0.7, 1.0};
//        CGFloat colorComponents[] = {
//            //red, green, blue, alpha
//            [self randomValue], [self randomValue], [self randomValue], 1.0,
//            [self randomValue], [self randomValue], [self randomValue], 1.0,
//            [self randomValue], [self randomValue], [self randomValue], 1.0,
//            [self randomValue], [self randomValue], [self randomValue], 1.0};
//
//        LdzfGradientColor *gradientColor = [LdzfGradientColor gradientColorWithLocations:locations
//                                                                      components:colorComponents
//                                                                           count:count];
//
//        [_contextObject drawLinearGradientAtClipToRect:CGRectMake(20, 0, 10, self.frame.size.height)
//                                         gradientColor:gradientColor
//                                            startPoint:CGPointMake(0, 0)
//                                              endPoint:CGPointMake(0, self.frame.size.height)];
//    }
}

- (CGFloat)randomValue {

    CGFloat value = arc4random() % 101 / 100.f;
    return value;
}

@end


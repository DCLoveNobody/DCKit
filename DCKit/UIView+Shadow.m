//
//  UIView+Shadow.m
//  SoYoungMobile40
//
//  Created by 浩克 on 2018/7/22.
//  Copyright © 2018年 soyoung. All rights reserved.
//

#import "UIView+Shadow.h"

@implementation UIView (Shadow)

- (void)dc_shadowOffset:(CGPoint)offset shadowColor:(UIColor *)shadowColor {
    CGFloat shadowRadius = self.layer.cornerRadius;
    [self dc_shadowOffset:offset shadowColor:shadowColor shadowOpacity:1 shadowRadius:shadowRadius];
}

- (void)dc_shadowOffset:(CGPoint)offset shadowColor:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity {
    CGFloat shadowRadius = self.layer.cornerRadius;
    [self dc_shadowOffset:offset shadowColor:shadowColor shadowOpacity:shadowOpacity shadowRadius:shadowRadius];
}

- (void)dc_shadowOffset:(CGPoint)offset shadowColor:(UIColor *)shadowColor shadowRadius:(CGFloat)shadowRadius {
    [self dc_shadowOffset:offset shadowColor:shadowColor shadowOpacity:1 shadowRadius:shadowRadius];
}

- (void)dc_shadowOffset:(CGPoint)offset shadowColor:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius {
    CGRect rect = CGRectMake(offset.x, offset.y, self.bounds.size.width, self.bounds.size.height);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:shadowRadius];
    self.layer.shadowPath = path.CGPath;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowRadius = shadowRadius;
    self.layer.shadowOffset = CGSizeZero;
}

- (void)dc_shadowPath:(CGRect)rect shadowColor:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius {
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:shadowRadius];
    self.layer.shadowPath = path.CGPath;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowRadius = shadowRadius;
    self.layer.shadowOffset = CGSizeZero;
}

@end

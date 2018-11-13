//
//  UIView+Shadow.h
//  SoYoungMobile40
//
//  Created by 浩克 on 2018/7/22.
//  Copyright © 2018年 soyoung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Shadow)

- (void)dc_shadowOffset:(CGPoint)offset shadowColor:(UIColor *)shadowColor;

- (void)dc_shadowOffset:(CGPoint)offset shadowColor:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity;

- (void)dc_shadowOffset:(CGPoint)offset shadowColor:(UIColor *)shadowColor shadowRadius:(CGFloat)shadowRadius;

/**
 @param offset 偏移
 @param shadowColor 阴影颜色
 @param shadowOpacity 阴影透明度
 @param shadowRadius 矩形圆角
 */
- (void)dc_shadowOffset:(CGPoint)offset shadowColor:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius;

/**
 @param shadowPath 阴影矩形
 @param shadowColor 阴影颜色
 @param shadowOpacity 阴影透明度
 @param shadowRadius 矩形圆角
 */
- (void)dc_shadowPath:(CGRect)rect shadowColor:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius;


@end

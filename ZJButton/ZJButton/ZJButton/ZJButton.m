//
//  ZJButton.m
//  ZJButton
//
//  Created by gleen on 2017/1/17.
//  Copyright © 2017年 gleen. All rights reserved.
//

#import "ZJButton.h"

@implementation ZJButton

+ (UIButton *)zj_textButtonWithFrame:(CGRect)frame
                     backgroundColor:(UIColor *)backgroundColor
                                text:(NSString *)text
                           textColor:(UIColor *)textColor
                        textFontSize:(CGFloat)textFontSize {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setTitle:text forState:UIControlStateNormal];
    //    [button setBackgroundColor:backgroundColor];
    //设置点击背景颜色高亮
    [button setBackgroundImage:[self imageWithColor:backgroundColor] forState:UIControlStateNormal];
    [button setBackgroundImage:[self imageWithColor:[UIColor colorWithWhite:0.3 alpha:0.2]] forState:UIControlStateHighlighted];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:textFontSize]];
    return button;
}

// 创建仅有图片的按钮
+ (UIButton *)zj_onlyImageButtonWithFrame:(CGRect)frame
                             backgroundColor:(UIColor *)backgroundColor
                                       image:(UIImage *)image {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setBackgroundColor:backgroundColor];
    [button setAdjustsImageWhenHighlighted:YES];//关闭按钮点击时的高亮状态
    [button setImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:[self imageWithColor:backgroundColor] forState:UIControlStateNormal];
    [button setBackgroundImage:[self imageWithColor:[UIColor colorWithWhite:0.3 alpha:0.2]] forState:UIControlStateHighlighted];
    return button;
}








//  颜色转换为背景图片
+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end

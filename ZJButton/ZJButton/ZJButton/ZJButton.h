//
//  ZJButton.h
//  ZJButton
//
//  Created by gleen on 2017/1/17.
//  Copyright © 2017年 gleen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZJButton : NSObject

/**
创建只有text的button
 @param frame 尺寸大小
 @param backgroundColor 背景颜色
 @param text 标题
 @param textColor 标题颜色
 @param textFontSize 标题字体大小
 @return 按钮
 */
+ (UIButton *)zj_textButtonWithFrame:(CGRect)frame
                     backgroundColor:(UIColor *)backgroundColor
                                text:(NSString *)text
                           textColor:(UIColor *)textColor
                        textFontSize:(CGFloat)textFontSize;
/**
 创建仅有图片的按钮
 @param frame frame
 @param backgroundColor backgroundColor description
 @param image image description
 @return return value description
 */
+ (UIButton *)zj_onlyImageButtonWithFrame:(CGRect)frame
                             backgroundColor:(UIColor *)backgroundColor
                                       image:(UIImage *)image;




@end














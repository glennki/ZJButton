//
//  ViewController.m
//  ZJButton
//
//  Created by gleen on 2017/1/17.
//  Copyright © 2017年 gleen. All rights reserved.
//

#import "ViewController.h"
#import "ZJButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   //只有文字的按钮
    UIButton *onlyTextButton = [ZJButton zj_textButtonWithFrame:CGRectMake(0, 50, 130, 30) backgroundColor:[UIColor redColor] text:@"只有文字的按钮" textColor:[UIColor whiteColor] textFontSize:18];
    [self.view addSubview:onlyTextButton];
    
    //只有图片的按钮
    UIImage *onlyImage = [UIImage imageNamed:@"stickerlocal01"];
    UIButton *onlyImageButton = [ZJButton zj_onlyImageButtonWithFrame:CGRectMake(0, 100, onlyImage.size.width, onlyImage.size.height) backgroundColor:[UIColor clearColor] image:onlyImage];
    [self.view addSubview:onlyImageButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end











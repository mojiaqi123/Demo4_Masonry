//
//  ViewController.m
//  Demo4_Masonry
//
//  Created by tarena on 16/5/7.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    //使用 masonry添加约束 ， 不能对一个约束条件添加两次
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        //高 宽 150 150
        make.size.mas_equalTo(CGSizeMake(150, 150));
        //x y  居中
        make.center.equalTo(self.view);
    }];
    
//    //更新约束
//    [view mas_updateConstraints:^(MASConstraintMaker *make) {
//        
//    }];
//    //重新制作约束
//    [view mas_remakeConstraints:^(MASConstraintMaker *make) {
//        
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

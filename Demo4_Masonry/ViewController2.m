//
//  ViewController2.m
//  Demo4_Masonry
//
//  Created by tarena on 16/5/7.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController2.h"
#import "Masonry.h"
@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view2];
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 100));
//        make.left.mas_equalTo(20);
//        make.top.mas_equalTo(20);
        make.left.and.top.mas_equalTo(20);
    }];

    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 100));
        make.top.mas_equalTo(view);
        make.right.mas_equalTo(-20);
    }];
    
    
    [view mas_updateConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

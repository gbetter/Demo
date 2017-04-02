//
//  DMScrollView.m
//  DemoMasonry
//
//  Created by ZZY on 2017/4/2.
//  Copyright © 2017年 DMY. All rights reserved.
//

#import "DMScrollView.h"

@interface DMScrollView()

@property(nonatomic, strong) UIScrollView *scrollView;

@end

@implementation DMScrollView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.scrollView = [UIScrollView new];
        [_scrollView setBackgroundColor:[UIColor grayColor]];
        [self addSubview:_scrollView];
        
        [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
        }];
        
        [self setUpContentView];
    }
    return self;
}


- (void)setUpContentView {
    UIView *contentView = [UIView new];
    [contentView setBackgroundColor:[UIColor redColor]];
    [self.scrollView addSubview:contentView];
    
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.scrollView);
        make.width.equalTo(self.scrollView);
    }];
    
    //添加控件到contentView，约束原理与自动布局相同
    UIView *lastView;
    CGFloat height = 30;
    for (int i = 0; i < 15; i ++) {
        UIView *view = UIView.new;
        view.backgroundColor = [UIColor colorWithRed:arc4random() % 255 / 256.0  green:arc4random() % 255 / 256.0 blue:arc4random() % 255 / 256.0 alpha:1.0];
        [contentView addSubview:view];
        
        [view makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(lastView ? lastView.bottom : @10);
            make.left.equalTo(0);
            make.width.equalTo(contentView.width);
            make.height.equalTo(height);
        }];
        
        height += 30;
        lastView = view;
    }
    
    [contentView makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(lastView.bottom);
    }];

}

@end

//
//  DMMutiLabelView.m
//  DemoMasonry
//
//  Created by ZZY on 2017/4/2.
//  Copyright © 2017年 DMY. All rights reserved.
//

#import "DMMutiLabelView.h"

@interface DMMutiLabelView ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation DMMutiLabelView


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.label = [UILabel new];
        self.label.numberOfLines = 0;
        self.label.lineBreakMode = NSLineBreakByTruncatingTail;
        self.label.textColor = [UIColor lightGrayColor];
        self.label.backgroundColor = [UIColor greenColor];
        self.label.text = @"有的人，没事时喜欢在朋友圈里到处点赞，东评论一句西评论一句，比谁都有存在感。等你有事找他了，他就立刻变得很忙，让你再也找不着。真正的朋友，平常很少联系。可一旦你遇上了难处，他会立刻回复你的消息，第一时间站出来帮你。所谓的存在感，不是你有没有出现，而是你的出现有没有价值。存在感，不是刷出来的，也不是说出来的。有存在感，未必是要个性锋芒毕露、甚至锋利扎人。翩翩君子，温润如玉，真正有存在感的人，反而不会刻意去强调他的存在感。他的出现，永远都恰到好处。我所欣赏的存在感，不是长袖善舞巧言令色，而是对他人的真心关照；不是锋芒毕露计较胜负，而是让人相处得舒服；不是时时刻刻聒噪不休，而是关键时刻能挺身而出。别总急着出风头，希望你能有恰到好处的存在感。";
        [self addSubview:self.label];
        
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(74);
            make.left.equalTo(10);
            make.right.equalTo(-10);
        }];
        
        
        
        UIView *byView = [UIView new];
        [byView setBackgroundColor:[UIColor redColor]];
        [self addSubview:byView];
        
        [byView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.label.bottom).offset(10);
            make.left.equalTo(10);
            make.right.equalTo(-10);
            make.height.equalTo(20);
        }];

        
    }
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    self.label.preferredMaxLayoutWidth = [[UIScreen mainScreen] bounds].size.width - 20;
    [super layoutSubviews];
}


@end

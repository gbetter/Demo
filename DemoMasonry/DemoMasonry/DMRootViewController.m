//
//  DMRootViewController.m
//  DemoMasonry
//
//  Created by ZZY on 2017/4/2.
//  Copyright © 2017年 DMY. All rights reserved.
//

#import "DMRootViewController.h"
#import "DMMutiLabelView.h"
#import "DMScrollView.h"

@interface DMRootViewController ()

@property (nonatomic, strong) UIButton *btn;

@property (nonatomic, strong) UILabel *label;

@end

@implementation DMRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTitle:@"Home"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIView *superview = self.view;
    
    self.view = [DMScrollView new];
    

    NSMutableArray *array = [NSMutableArray arrayWithCapacity:0];
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    __block NSMutableString *userName;
    void (^block)(int) = ^(int a) {
        [array addObject:@1];
        [dictionary setObject:@2 forKey:@"key"];
        userName = [NSMutableString stringWithFormat:@"888"];
    };
    
    //多行label的约束问题
    {/*
      
      superview.backgroundColor = [UIColor whiteColor];
      self.label = [UILabel new];
      self.label.numberOfLines = 0;
      self.label.lineBreakMode = NSLineBreakByTruncatingTail;
      self.label.textColor = [UIColor lightGrayColor];
      self.label.backgroundColor = [UIColor greenColor];
      self.label.text = @"有的人，没事时喜欢在朋友圈里到处点赞，东评论一句西评论一句，比谁都有存在感。等你有事找他了，他就立刻变得很忙，让你再也找不着。真正的朋友，平常很少联系。可一旦你遇上了难处，他会立刻回复你的消息，第一时间站出来帮你。所谓的存在感，不是你有没有出现，而是你的出现有没有价值。存在感，不是刷出来的，也不是说出来的。有存在感，未必是要个性锋芒毕露、甚至锋利扎人。翩翩君子，温润如玉，真正有存在感的人，反而不会刻意去强调他的存在感。他的出现，永远都恰到好处。我所欣赏的存在感，不是长袖善舞巧言令色，而是对他人的真心关照；不是锋芒毕露计较胜负，而是让人相处得舒服；不是时时刻刻聒噪不休，而是关键时刻能挺身而出。别总急着出风头，希望你能有恰到好处的存在感。";
      [superview addSubview:self.label];
      
      [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
      make.top.equalTo(74);
      make.left.equalTo(10);
      make.right.equalTo(-10);
      }];
      self.label.preferredMaxLayoutWidth = [[UIScreen mainScreen] bounds].size.width - 20;
      
      
      dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
      
      self.label.text = @"有的人，没事时喜欢在朋友圈里到处点赞，东评论一句西评论一句，";
      
      });
      
      UIView *byView = [UIView new];
      [byView setBackgroundColor:[UIColor redColor]];
      [superview addSubview:byView];
      
      [byView mas_makeConstraints:^(MASConstraintMaker *make) {
      make.top.equalTo(self.label.bottom).offset(10);
      make.left.equalTo(10);
      make.right.equalTo(-10);
      make.height.equalTo(20);
      }];

      
      */}
    
    {
    
    /*
    
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_btn setBackgroundColor:[UIColor redColor]];
    [_btn.layer setCornerRadius:5.0f];
    [_btn.layer setBorderWidth:1.0f];
    [_btn.layer setBorderColor:[UIColor greenColor].CGColor];
    [_btn setTitle:@"Click" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(p_didClickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [superview addSubview:_btn];
    
    [_btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@100);
        make.width.equalTo(@100);
        make.left.equalTo(superview).inset(10);
        make.height.equalTo(@40);
    }];
    
    
    
    UILabel *label = [[UILabel alloc] init];
    UILabel *labe2 = [[UILabel alloc] init];
    
    [superview addSubview:label];
    [superview addSubview:labe2];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@100);
        make.width.equalTo(labe2);
        make.right.equalTo(labe2.mas_left).with.offset(-20);
        make.left.equalTo(superview.mas_left).offset(20);
        make.centerY.equalTo(superview);
    }];
    
    [labe2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@100);
        make.centerY.equalTo(label);
        make.right.equalTo(superview.mas_right).offset(-20);
    }];
    
    [label setBackgroundColor:[UIColor redColor]];
    [labe2 setBackgroundColor:[UIColor blueColor]];
    MASAttachKeys(label,labe2,_btn); //当约束冲突的时候，通过设置 View 的 key 来定位哪个 View
    
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(superview);
        make.height.equalTo(@50);
        make.width.equalTo(@50);
    }];
   
    label.backgroundColor = [UIColor redColor];
    
    [label mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@100);
        make.width.equalTo(@100);
    }];
    
    [label mas_remakeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(superview.mas_left).offset(10);
//        make.top.equalTo(superview.mas_top).offset(100);
//        make.height.equalTo(@100).priorityMedium();
//        make.width.equalTo(@100).priorityHigh();
        make.edges.equalTo(superview).insets(UIEdgeInsetsMake(100, 20, 20, 20));
    }];
    
    */
        
        
    }
    /*
    {
        NSMutableArray *arr = [NSMutableArray arrayWithCapacity:5];
        
        for (int i = 0; i < 5; i++) {
            UIView *view = [[UIView alloc] init];
            [view setBackgroundColor:[UIColor redColor]];
            [superview addSubview:view];
            [arr addObject:view];`
        }
        
        //控件间隔固定 控件宽度不固定
//        [arr mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:10.0f leadSpacing:10.0 tailSpacing:10.0];
        
        //控件宽度 固定 间隔不固定
        [arr mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedItemLength:50 leadSpacing:10 tailSpacing:10];
        
        [arr makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(74);
            make.height.equalTo(70);
        }];
    }
    
    */
    
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



- (void)p_didClickBtn:(UIButton*)button {
    
//    CGSize btnSize = CGSizeMake(button.bounds.size.width*1.3, button.bounds.size.height*1.3);
    
    //更新约束
    [self.btn updateConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view);
        
        make.width.equalTo(@(200));
        make.height.equalTo(@(50));
        
//        make.width.lessThanOrEqualTo(self.view);
//        make.height.lessThanOrEqualTo(self.view);
    }];
    
}


@end

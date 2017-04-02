//
//  DMRootViewController.m
//  DemoMasonry
//
//  Created by ZZY on 2017/4/2.
//  Copyright © 2017年 DMY. All rights reserved.
//

#import "DMRootViewController.h"

@interface DMRootViewController ()

@property (nonatomic, strong) UIButton *btn;

@end

@implementation DMRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTitle:@"Home"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIView *superview = self.view;
    
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
    
    {
        NSMutableArray *arr = [NSMutableArray arrayWithCapacity:5];
        
        for (int i = 0; i < 5; i++) {
            UIView *view = [[UIView alloc] init];
            [view setBackgroundColor:[UIColor redColor]];
            [superview addSubview:view];
            [arr addObject:view];
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

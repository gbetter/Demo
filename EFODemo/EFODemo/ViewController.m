//
//  ViewController.m
//  EFODemo
//
//  Created by ZZY on 2017/4/15.
//  Copyright © 2017年 EFO. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>
#import "EFOAssociated.h"


typedef enum :NSInteger {
    EFOConectionStateDefault = 0,
    EFOConectionStateFaile = 1 << 0,
    EFOConectionStateSuccess = 1 << 1

}EFOConectionState;

NS_ENUM(NSInteger,EFOState){
    EFOState1 = 0,
    EFOState2 = 1 << 0
};

NS_OPTIONS(NSInteger, EFOOptionsStates){
    EFOOptionsStates1 = 0,
    EFOOptionsStates2 = 1 << 0
};


@interface ViewController ()

@property (nonatomic, assign) enum EFOState byState;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.s
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    EFOAssociated *associated = [[EFOAssociated alloc] init];
    objc_setAssociatedObject(associated, &EFOAssociatedIndexKey, @"100", OBJC_ASSOCIATION_RETAIN);
    
    NSLog(@"=====%@",objc_getAssociatedObject(associated, &EFOAssociatedIndexKey));
    
    SEL ss = NSSelectorFromString(@"doSometing");
    
    [associated performSelector:ss withObject:nil afterDelay:1];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

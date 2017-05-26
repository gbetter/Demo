//
//  EFOBaseMethodClass.m
//  EFODemo
//
//  Created by ZZY on 2017/4/15.
//  Copyright © 2017年 EFO. All rights reserved.
//

#import "EFOBaseMethodClass.h"

@interface EFOBaseMethodClass()<NSCacheDelegate>


@end

@implementation EFOBaseMethodClass {
    NSCache *cacheObj;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        cacheObj = [[NSCache alloc] init];
        cacheObj.countLimit = 100;
        cacheObj.totalCostLimit = 4*1024*1024;
    }
    return self;
}


- (void)doSometing {
    NSLog(@"========");
    NSData *data = [cacheObj objectForKey:@"cacheObjKey"];
    if (data) {
        //存在缓存数据
    }else {
//        NSData *caData = nil;
//        [cacheObj setObject:cacheObj forKey:@"cacheObjKey" cost:caData.length];
    }
    
}


@end

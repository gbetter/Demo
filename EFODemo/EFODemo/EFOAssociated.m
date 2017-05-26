//
//  EFOAssociated.m
//  EFODemo
//
//  Created by ZZY on 2017/4/15.
//  Copyright © 2017年 EFO. All rights reserved.
//

#import "EFOAssociated.h"
#import <objc/message.h>
#import "EFOBaseMethodClass.h"

@implementation EFOAssociated


+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSString *methodString = NSStringFromSelector(sel);
    if ([methodString isEqualToString:@"doSometing"]) {
        class_addMethod([self class], sel, class_getMethodImplementation([EFOBaseMethodClass class], @selector(doSometing)), "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}


- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *methodString = NSStringFromSelector(aSelector);
    if ([methodString isEqualToString:@"doSometing"]) {
        return [EFOBaseMethodClass new];
    }
    return nil;
}

- (NSMethodSignature*)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
    if (!signature) {
        
    }
    return signature;
}


- (void)forwardInvocation:(NSInvocation *)anInvocation {
    
}

@end

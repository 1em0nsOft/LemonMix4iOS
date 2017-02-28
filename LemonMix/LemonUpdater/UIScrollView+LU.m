//
//  UIScrollView+LU.m
//  LemonMix
//
//  Created by 1em0nsOft on 2017/2/28.
//  Copyright © 2017年 Lemonsoft. All rights reserved.
//

#import "UIScrollView+LU.h"
#import <objc/runtime.h>

static const void *LKTopUpdaterKey = &LKTopUpdaterKey;
static const void *LKBottomUpdaterKey = &LKBottomUpdaterKey;

@implementation UIScrollView (LU)

- (LemonUpdaterInfo *)lkTopUpdaterInfo{
    objc_getAssociatedObject(self, LKTopUpdaterKey);
}

- (void)setLkTopUpdaterInfo:(LemonUpdaterInfo *)lkTopUpdaterInfo{
    objc_setAssociatedObject(self, LKTopUpdaterKey, lkTopUpdaterInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (LemonUpdaterInfo *)lkBottomUpdaterInfo{
    objc_getAssociatedObject(self, LKBottomUpdaterKey);
}

- (void)setLkBottomUpdaterInfo:(LemonUpdaterInfo *)lkBottomUpdaterInfo{
    objc_setAssociatedObject(self, LKBottomUpdaterKey, lkBottomUpdaterInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

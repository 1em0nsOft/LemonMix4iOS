//
//  UIScrollView+LU.h
//  LemonMix
//
//  Created by 1em0nsOft on 2017/2/28.
//  Copyright © 2017年 Lemonsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LemonUpdaterInfo.h"

@interface UIScrollView (LU)

@property (nonatomic,strong) LemonUpdaterInfo *lkTopUpdaterInfo;
@property (nonatomic,strong) LemonUpdaterInfo *lkBottomUpdaterInfo;

@end

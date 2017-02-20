//
//  StarterViewController.m
//  LemonMix
//
//  Created by 1em0nsOft on 2017/2/20.
//  Copyright © 2017年 Lemonsoft. All rights reserved.
//

#import "StarterViewController.h"

@interface StarterViewController ()

@end

@implementation StarterViewController

- (void)firstViewDidAppear:(BOOL)animated{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LKFreeCtrl pushViewController: LKInstanceFindViewControllerWithKey( @"m_main")];
    });
}

@end

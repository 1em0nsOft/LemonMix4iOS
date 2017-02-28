//
//  MainViewController.m
//  LemonMix
//
//  Created by 1em0nsOft on 2017/2/20.
//  Copyright © 2017年 Lemonsoft. All rights reserved.
//

#import "MainViewController.h"

static const int NAV_HEIGHT = 44;

@interface MainViewController () <UIScrollViewDelegate>

@end

@implementation MainViewController 

-(void)initView{
    self.webView = [[LMWebView alloc] initWithFrame: CGRectMake(0, NAV_HEIGHT, self.view.bounds.size.width, self.view.self.bounds.size.height - NAV_HEIGHT)];
    [self addSubview: self.webView];
    [self.webView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString: @"http://www.baidu.com"]]];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"woc");
}

@end

//
//  MainViewController.m
//  LemonMix
//
//  Created by 1em0nsOft on 2017/2/20.
//  Copyright © 2017年 Lemonsoft. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () <UIScrollViewDelegate>

@end

@implementation MainViewController 

- (void)firstViewDidAppear:(BOOL)animated{
    [self.webView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString: @"http://www.baidu.com"]]];
    UIView *v = [[UIView alloc] initWithFrame: CGRectMake(0, -20, 20, 20)];
    v.backgroundColor = [UIColor redColor];
    [self.webView.scrollView addSubview:v];
//    self.webView.scrollView.delegate = self;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"woc");
}

@end

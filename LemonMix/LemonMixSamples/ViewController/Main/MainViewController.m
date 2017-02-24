//
//  MainViewController.m
//  LemonMix
//
//  Created by 1em0nsOft on 2017/2/20.
//  Copyright © 2017年 Lemonsoft. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)firstViewDidAppear:(BOOL)animated{
    [self.webView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString: @"http://www.lemonsoft.net"]]];
}

@end

//
//  LMWebViewController.m
//  LemonMix
//
//  Created by 1em0nsOft on 2017/2/20.
//  Copyright © 2017年 Lemonsoft. All rights reserved.
//

#import "LMWebViewController.h"
#import "LMWebView.h"

@interface LMWebViewController ()

@property (readwrite, nonatomic,strong) LMWebView *webView;

@end

@implementation LMWebViewController

- (void)viewDidLoad{
    self.webView = [LMWebView new];
    self.webView.frame = CGRectMake(0, 44, self.view.frame.size.width, self.view.frame.size.height - 44);
    [self.view addSubview: self.webView];
    [super viewDidLoad];
}

@end

//
//  LMWebView.h
//  LemonMix
//
//  Created by 1em0nsOft on 2017/2/20.
//  Copyright © 2017年 Lemonsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LMInteractiveModel.h"

@class LMWebView;
@class LemonUpdaterInfo;

/**
 LMWebView的代理函数，通常这里为
 */
@protocol LMWebViewHybirdDelegate <NSObject>

/**
 LemonMix JS-SDK中在调用设置标题函数的时候对应的原生回调代理
 通常，开发者可以在这里对JS中传过来的标题进行处理，比如：应用到导航栏的title中

 @param webView 设置标题的消息所来自的webView
 @param title JS中传输过来的标题字符串
 */
- (void)callWithSetTitleInWebView: (LMWebView *)webView title: (NSString *)title;

/**
 LemonMix JS-SDK中主动向原生发出的消息处理代理
 在混合开发中，如果LemonMix自带的混合开发交互功能不足以满足业务的时候，可以通过此代理通信进行自定义交互

 @param webView 调用消息所来自的webView
 @param message JS中传输过来的消息对象，在oc中自动包装成NSDictionary
 */
- (void)callWithMessageInWebView: (LMWebView *)webView message: (NSDictionary *)message;

/**
 LemonMix JS-SDK中主动申请导航到指定原生界面的时候的代理函数

 @param webView 导航到指定原生界面的消息来源webView
 @param navInfo 导航信息模型
 */
- (void)callWithNavigationInWebView: (LMWebView *)webView navInfo: (LMNavigationModel *)navInfo;

@end

@protocol LMWebViewUIDelegate <NSObject>

/**
 设置顶部下拉刷新样式的代理

 @param webView 设置刷新样式的webView对象
 @return 要应用的LemonUpdater刷新样式模型
 */
- (LemonUpdaterInfo *)setTopUpdaterInWebView: (LMWebView *)webView;

/**
 设置底部上拉加载样式的代理

 @param webView 设置刷新样式的webView对象
 @return 要应用的LemonUpdater刷新样式模型
 */
- (LemonUpdaterInfo *)setBottomUpdaterInWebView: (LMWebView *)webView;

@end

/**
 LemonMix混合开发框架 - WebView原生控件
 该控件支持与LemonMix的JS-SDK进行交互
 */
@interface LMWebView : WKWebView

/**
 混合开发调用交互代理
 */
@property (nonatomic,strong) id<LMWebViewHybirdDelegate> hybirdDelegate;
/**
 WebView的UI相关代理
 */
@property (nonatomic,strong) id<LMWebViewUIDelegate> uiDelegate;

@end

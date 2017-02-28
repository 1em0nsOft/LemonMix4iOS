//
//  LMInteractiveModel.h
//  LemonMix
//
//  Created by 1em0nsOft on 2017/2/28.
//  Copyright © 2017年 Lemonsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 交互数据模型
 */
@interface LMInteractiveModel : NSObject

/**
 数据字典
 */
@property NSDictionary *data;

@end

/**
 导航信息交互模型
 */
@interface LMNavigationModel : LMInteractiveModel

/**
 新界面的编码，通常，使用LemonMix进行导航交互的时候，需要配置一套视图代码关系映射
 在LemonMix中通知原生要导航到的视图代码，然后原生代码通过代理函数解析代码对应的映射视图后进行跳转
 */
@property (nonatomic,strong) NSString *newInterfaceCode;
/**
 动画代码，此属性中的具体值需要开发者根据具体的APP跳转动画样式进行定义
 */
@property (nonatomic,assign) int animationCode;

@end

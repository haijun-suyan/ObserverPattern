//
//  ViewController.m
//  ObserverPattern
//
//  Created by haijunyan on 2019/2/20.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "ViewController.h"
#import "SubscriptionServiceCenter.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //广播站点的编号
    NSString *scienceA = @"11";
    //创建订阅(编)号广播站点
    [SubscriptionServiceCenter createSubscriptionNumber:scienceA];


    //创建待观察者
    Customer *customerB = [Customer new];

    //待观察者 被添加到 广播站点(主观察器)
    [SubscriptionServiceCenter addCustomer:customerB withSubscriptionNumber:scienceA];

    //特定的 广播站点(主观察器) 进行 消息广播
    [SubscriptionServiceCenter sendMessage:@" 中国人！" toSubscriptionNumber:scienceA];

    
}

@end

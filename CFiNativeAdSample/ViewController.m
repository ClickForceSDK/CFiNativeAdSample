//
//  ViewController.m
//  CFiNativeAdSample
//
//  Created by 郭堯彰 on 2018/1/23.
//  Copyright © 2018年 cf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    cfNativeAd = [[MFNativeAd alloc]init];
    cfNativeAd.delegate = self;
    cfNativeAd.bannerId = @"5229";
    [cfNativeAd requestAd];
}

- (void)onMFNativeAdDidLoad:(MFNativeAd *)nativeAd
{
    cfNativeAd = nativeAd;
    self.adTitle.text = cfNativeAd.title;
    self.adBody.text = cfNativeAd.content;
    self.advertiser.text = cfNativeAd.advertiser;
    [self.adButtonTitle setTitle:cfNativeAd.buttonTitle forState:UIControlStateNormal];
    
    [cfNativeAd.coverImg loadImageAsyncWithBlock:^(UIImage *image){
        self.adCoverImg.image = image;
    }];
    
    [cfNativeAd registerViewForInteraction:self.adButtonTitle withViewController:self];
}

- (void)onMFNativeAdClick:(MFNativeAd *)nativeAd
{
    NSLog(@"點擊廣告完成");
}

- (void)onMFNativeAdRequestFail
{
    NSLog(@"原生廣告載入失敗");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

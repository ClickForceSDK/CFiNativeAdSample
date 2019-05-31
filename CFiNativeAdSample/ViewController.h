//
//  ViewController.h
//  CFiNativeAdSample
//
//  Created by 郭堯彰 on 2018/1/23.
//  Copyright © 2018年 cf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iMFAD/iMFAD.h>

@interface ViewController : UIViewController<MFNativeDelegate>
{
    MFNativeAd *cfNativeAd;
}

@property (strong, nonatomic) IBOutlet UILabel *adTitle;
@property (strong, nonatomic) IBOutlet UILabel *adBody;
@property (strong, nonatomic) IBOutlet UILabel *advertiser;
@property (strong, nonatomic) IBOutlet UIImageView *adCoverImg;
@property (strong, nonatomic) IBOutlet UIButton *adButtonTitle;
@property (strong, nonatomic) IBOutlet UIView *adContainer;

@end


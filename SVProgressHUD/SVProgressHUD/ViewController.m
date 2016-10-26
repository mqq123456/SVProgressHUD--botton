//
//  ViewController.m
//  SVProgressHUD
//
//  Created by xalo on 15/10/31.
//  Copyright © 2015年 蓝鸥科技. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController
/*!
 * @author Vic_Li, 15-10-31 10:10:55
 *
 * enum {
 //    允许用户进行其他界面操作
 SVProgressHUDMaskTypeNone = 1, // allow user interactions while HUD is displayed
 //    不允许用户进行其他界面操作
 SVProgressHUDMaskTypeClear, // don't allow
 
 SVProgressHUDMaskTypeBlack, // don't allow and dim the UI in the back of the HUD
 SVProgressHUDMaskTypeGradient // don't allow and dim the UI with a a-la-alert-view bg gradient
 };
 
 typedef NSUInteger SVProgressHUDMaskType;
 
 @interface SVProgressHUD : UIView
 //展示提示框
 + (void)show;
 + (void)showWithStatus:(NSString*)status;
 + (void)showWithStatus:(NSString*)status maskType:(SVProgressHUDMaskType)maskType;
 + (void)showWithMaskType:(SVProgressHUDMaskType)maskType;
 
 + (void)showSuccessWithStatus:(NSString*)string;
 + (void)showSuccessWithStatus:(NSString *)string duration:(NSTimeInterval)duration;
 + (void)showErrorWithStatus:(NSString *)string;
 + (void)showErrorWithStatus:(NSString *)string duration:(NSTimeInterval)duration;
 //改变当前正在展示的提示框文字
 + (void)setStatus:(NSString*)string; // change the HUD loading status while it's showing
 //关闭当前提示
 + (void)dismiss; // simply dismiss the HUD with a fade+scale out animation
 + (void)dismissWithSuccess:(NSString*)successString; // also displays the success icon image
 + (void)dismissWithSuccess:(NSString*)successString afterDelay:(NSTimeInterval)seconds;
 + (void)dismissWithError:(NSString*)errorString; // also displays the error icon image
 + (void)dismissWithError:(NSString*)errorString afterDelay:(NSTimeInterval)seconds;
 
 + (BOOL)isVisible;

 */

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)bottonClick:(id)sender {
    [SVProgressHUD showWithStatus:@"底部展示中..." type:SVProgressHUDCenterBotton];
}
- (IBAction)progessClick:(id)sender {
    [SVProgressHUD showProgress:0 status:@"加载中..."];
}
- (IBAction)successClick:(id)sender {
    [SVProgressHUD showSuccessWithStatus:@"success"];
}
- (IBAction)errorClick:(id)sender {
    [SVProgressHUD showErrorWithStatus:@"error"];
}
- (IBAction)textClick:(id)sender {
    [SVProgressHUD showWithStatus:@"加载中，请稍后..."];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  AlertViewActionSheetSample
//
//  Created by Patrick on 14-6-8.
//  Copyright (c) 2014年 Patrick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 警告按钮，显示两个button的时候使用
- (IBAction)testAlertView:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Alert"
                                                       message:@"Alert text goes here"
                                                      delegate:self
                                             cancelButtonTitle:@"NO"
                                             otherButtonTitles:@"YES", nil];
    [alertView show];
}

// 警告按钮，显示一个button的时候使用
- (IBAction)testAlertView1b:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Alert"
                                                       message:@"Alert text goes here"
                                                      delegate:self
                                             cancelButtonTitle:@"YES"
                                             otherButtonTitles: nil];
    [alertView show];
}

// 该方法用于取得用户点击警告框的按钮，以便应对多按钮时的处理方法，如处理yes时执行某方法，no时cancel
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"buttonIndex = %i", buttonIndex);
}

- (IBAction)testActionSheet:(id)sender {
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc]initWithTitle:nil
                                                            delegate:self
                                                   cancelButtonTitle:@"取消"
                                              destructiveButtonTitle:@"破坏性按钮"
                                                   otherButtonTitles:@"Facebook",@"新浪微博", nil];
    
    actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
    [actionSheet showInView:self.view];
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"点击的按钮序号是：%i",buttonIndex);
}

@end

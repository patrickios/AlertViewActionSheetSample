//
//  ViewController.h
//  AlertViewActionSheetSample
//
//  Created by Patrick on 14-6-8.
//  Copyright (c) 2014年 Patrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate,UIActionSheetDelegate>
- (IBAction)testAlertView:(id)sender;
- (IBAction)testAlertView1b:(id)sender;

- (IBAction)testActionSheet:(id)sender;

@end

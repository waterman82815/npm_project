//
//  emotionViewController.h
//  new_prototype
//
//  Created by 瀚陽 王 on 2014/8/9.
//  Copyright (c) 2014年 瀚陽 王. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"

@interface emotionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *together_text;

@property (weak, nonatomic) IBOutlet UITextField *weather_text;

@property (weak, nonatomic) IBOutlet UITextField *emotion_text;

@property (strong, nonatomic) Data *data;


@end

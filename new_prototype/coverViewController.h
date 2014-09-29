//
//  coverViewController.h
//  new_prototype
//
//  Created by 瀚陽 王 on 2014/8/8.
//  Copyright (c) 2014年 瀚陽 王. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"
@interface coverViewController : UIViewController
<UINavigationControllerDelegate,UIImagePickerControllerDelegate>




//imagepicker
@property (nonatomic, strong) UIImagePickerController *imagePicker;
@property (nonatomic, strong) IBOutlet UIImageView *imageField;
@property (weak, nonatomic) IBOutlet UITextField *cover_name;


/*
@property (nonatomic, strong) UIImagePickerController *hole_imagePicker;
@property (nonatomic, strong) IBOutlet UIImageView *hole_imageField;
@property (weak, nonatomic) IBOutlet UITextField *hole_text;


@property (nonatomic, strong) UIImagePickerController *montain_imagePicker;
@property (nonatomic, strong) IBOutlet UIImageView *montain_imageField;
@property (weak, nonatomic) IBOutlet UITextField *montain_text;


@property (nonatomic, strong) UIImagePickerController *uni_imagePicker;
@property (nonatomic, strong) IBOutlet UIImageView *uni_imageField;
@property (weak, nonatomic) IBOutlet UITextField *uni_text;

@property (nonatomic, strong) UIImagePickerController *ten_imagePicker;
@property (nonatomic, strong) IBOutlet UIImageView *ten_imageField;
@property (weak, nonatomic) IBOutlet UITextField *ten_text;


@property (nonatomic, strong) UIImagePickerController *people_imagePicker;
@property (nonatomic, strong) IBOutlet UIImageView *people_imageField;
@property (weak, nonatomic) IBOutlet UITextField *people_text;

@property (nonatomic, strong) UIImagePickerController *festival_imagePicker;
@property (nonatomic, strong) IBOutlet UIImageView *festival_imageField;
@property (weak, nonatomic) IBOutlet UITextField *festival_text;

@property (nonatomic, strong) UIImagePickerController *all_imagePicker;
@property (nonatomic, strong) IBOutlet UIImageView *all_imageField;





@property (weak, nonatomic) IBOutlet UITextField *together_text;

@property (weak, nonatomic) IBOutlet UITextField *weather_text;

@property (weak, nonatomic) IBOutlet UITextField *emotion_text;
*/

/*
@property (nonatomic, strong) UIImagePickerController *botton_imagePicker;
@property (nonatomic, strong) IBOutlet UIImageView *botton_imageField;


@property (weak, nonatomic) IBOutlet UITextField *bottom_text;
@property (weak, nonatomic) IBOutlet UITextField *year;
@property (weak, nonatomic) IBOutlet UITextField *month;
@property (weak, nonatomic) IBOutlet UITextField *day;
*/


@property (strong, nonatomic) Data *data;





@end

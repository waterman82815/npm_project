//
//  emotionViewController.m
//  new_prototype
//
//  Created by 瀚陽 王 on 2014/8/9.
//  Copyright (c) 2014年 瀚陽 王. All rights reserved.
//

#import "emotionViewController.h"
#import "holeViewController.h"
@interface emotionViewController ()

@end

@implementation emotionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)doEditFieldDone:(id)sender {
    
    //（鍵盤消失）
    [sender resignFirstResponder];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"TwoToThree"]){
        self.data.Global_Together = self.together_text.text;
        self.data.Global_Emotion = self.emotion_text.text;
        self.data.Global_Weather = self.weather_text.text;
        holeViewController *vc2_3 = segue.destinationViewController;
        vc2_3.data = self.data;
    }
}
@end

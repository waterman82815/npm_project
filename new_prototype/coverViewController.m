//
//  coverViewController.m
//  new_prototype
//
//  Created by 瀚陽 王 on 2014/8/8.
//  Copyright (c) 2014年 瀚陽 王. All rights reserved.
//

#import "coverViewController.h"
#import "emotionViewController.h"
@interface coverViewController ()

@end

@implementation coverViewController



@synthesize imagePicker,imageField ;
            //hole_imagePicker , hole_imageField ,
            //montain_imagePicker , montain_imageField ,
            //uni_imagePicker , uni_imageField ,
            //ten_imagePicker , ten_imageField ,
            //people_imagePicker , people_imageField ,
            //all_imagePicker , all_imageField ,
            //festival_imagePicker , festival_imageField ,
            //botton_imagePicker , botton_imageField ;


           

- (IBAction)imageFromAlbum:(id)sender
{
    imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentViewController:imagePicker animated:YES completion:nil];
    
    /*
    hole_imagePicker = [[UIImagePickerController alloc] init];
    hole_imagePicker.delegate = self;
    hole_imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentViewController:hole_imagePicker animated:YES completion:nil];
    
    montain_imagePicker = [[UIImagePickerController alloc] init];
    montain_imagePicker.delegate = self;
    montain_imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentViewController:montain_imagePicker animated:YES completion:nil];
    
    uni_imagePicker = [[UIImagePickerController alloc] init];
    uni_imagePicker.delegate = self;
    uni_imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentViewController:uni_imagePicker animated:YES completion:nil];
    
    ten_imagePicker = [[UIImagePickerController alloc] init];
    ten_imagePicker.delegate = self;
    ten_imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentViewController:ten_imagePicker animated:YES completion:nil];
    
    people_imagePicker = [[UIImagePickerController alloc] init];
    people_imagePicker.delegate = self;
    people_imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentViewController:people_imagePicker animated:YES completion:nil];

    all_imagePicker = [[UIImagePickerController alloc] init];
    all_imagePicker.delegate = self;
    all_imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentViewController:all_imagePicker animated:YES completion:nil];
    
    festival_imagePicker = [[UIImagePickerController alloc] init];
    festival_imagePicker.delegate = self;
    festival_imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentViewController:festival_imagePicker animated:YES completion:nil];
    
    botton_imagePicker = [[UIImagePickerController alloc] init];
    botton_imagePicker.delegate = self;
    botton_imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentViewController:botton_imagePicker animated:YES completion:nil];
    */
    
}

- (IBAction)imageFromCamera:(id)sender
{
    imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    [self presentViewController:imagePicker animated:YES completion:nil];
    /*
    hole_imagePicker = [[UIImagePickerController alloc] init];
    hole_imagePicker.delegate = self;
    hole_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    hole_imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    [self presentViewController:hole_imagePicker animated:YES completion:nil];
    
    montain_imagePicker = [[UIImagePickerController alloc] init];
    montain_imagePicker.delegate = self;
    montain_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    montain_imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    [self presentViewController:montain_imagePicker animated:YES completion:nil];
    
    uni_imagePicker = [[UIImagePickerController alloc] init];
    uni_imagePicker.delegate = self;
    uni_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    uni_imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    [self presentViewController:uni_imagePicker animated:YES completion:nil];
    
    ten_imagePicker = [[UIImagePickerController alloc] init];
    ten_imagePicker.delegate = self;
    ten_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    ten_imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    [self presentViewController:ten_imagePicker animated:YES completion:nil];
    
    people_imagePicker = [[UIImagePickerController alloc] init];
    people_imagePicker.delegate = self;
    people_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    people_imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    [self presentViewController:people_imagePicker animated:YES completion:nil];
    
    festival_imagePicker = [[UIImagePickerController alloc] init];
    festival_imagePicker.delegate = self;
    festival_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    festival_imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    [self presentViewController:festival_imagePicker animated:YES completion:nil];
    
    all_imagePicker = [[UIImagePickerController alloc] init];
    all_imagePicker.delegate = self;
    all_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    all_imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    [self presentViewController:all_imagePicker animated:YES completion:nil];

    botton_imagePicker = [[UIImagePickerController alloc] init];
    botton_imagePicker.delegate = self;
    botton_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    botton_imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    [self presentViewController:botton_imagePicker animated:YES completion:nil];

*/




}


- (IBAction)doEditFieldDone:(id)sender {
    
    //（鍵盤消失）
    [sender resignFirstResponder];
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{
    [imagePicker dismissModalViewControllerAnimated:YES];
    [imageField setImage:image];
    /*
    [hole_imagePicker dismissModalViewControllerAnimated:YES];
    [hole_imageField setImage:image];
    
    [montain_imagePicker dismissModalViewControllerAnimated:YES];
    [montain_imageField setImage:image];
    
    [uni_imagePicker dismissModalViewControllerAnimated:YES];
    [uni_imageField setImage:image];
    
    [ten_imagePicker dismissModalViewControllerAnimated:YES];
    [ten_imageField setImage:image];
    
    [people_imagePicker dismissModalViewControllerAnimated:YES];
    [people_imageField setImage:image];
    
    [festival_imagePicker dismissModalViewControllerAnimated:YES];
    [festival_imageField setImage:image];
    
    [all_imagePicker dismissModalViewControllerAnimated:YES];
    [all_imageField setImage:image];
    
    [botton_imagePicker dismissModalViewControllerAnimated:YES];
    [botton_imageField setImage:image];
*/
    
}





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
    
    self.data = [[Data alloc] init];

    

}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"OneToTwo"]){
        self.data.Global_Cover_Name = self.cover_name.text;
        self.data.Global_Cover_Image = self.imageField.image;
        emotionViewController *vc1_2 = segue.destinationViewController;
        vc1_2.data = self.data;
    }
}


@end

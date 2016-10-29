//
//  ViewController.m
//  basicAnimations-1
//
//  Created by Sahil Dhawan on 24/10/16.
//  Copyright © 2016 Sahil Dhawan. All rights reserved.
//
//resume app
#import "ViewController.h"
#import "Ionicons.h"
#import <ChameleonFramework/Chameleon.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageView.alpha = 0;
    self.button1.alpha = 0;
    self.button2.alpha = 0;
    self.button3.alpha = 0;
    self.button4.alpha = 0;
    self.button5.alpha = 0;
    self.label1.alpha = 0;
    self.label2.alpha = 0;
//    NSArray *colorsArray = [NSArray arrayWithObjects:[UIColor blackColor],[UIColor lightGrayColor],[UIColor blackColor] ,nil];
//    
//    
    
//    self.view.backgroundColor = [UIColor colorWithGradientStyle:UIGradientStyleTopToBottom withFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) andColors:colorsArray];
//
    
    UIImage *icon1 = [IonIcons imageWithIcon:ion_social_googleplus
                                   iconColor:[UIColor whiteColor]
                                    iconSize:50.0f
                                   imageSize:CGSizeMake(50.0f, 50.0f)];
    [self.button1 setImage:icon1 forState:UIControlStateNormal];
    
    UIImage *icon2 = [IonIcons imageWithIcon:ion_social_facebook
                                   iconColor:[UIColor whiteColor]
                                    iconSize:50.0f
                                   imageSize:CGSizeMake(50.0f, 50.0f)];
    [self.button2 setImage:icon2 forState:UIControlStateNormal];
    
    
    UIImage *icon3 = [IonIcons imageWithIcon:ion_social_twitter
                                   iconColor:[UIColor whiteColor]
                                    iconSize:50.0f
                                   imageSize:CGSizeMake(50.0f, 50.0f)];
    [self.button3 setImage:icon3 forState:UIControlStateNormal];
    
    
    UIImage *icon4 = [IonIcons imageWithIcon:ion_social_linkedin
                                   iconColor:[UIColor whiteColor]
                                    iconSize:50.0f
                                   imageSize:CGSizeMake(50.0f, 50.0f)];
    [self.button4 setImage:icon4 forState:UIControlStateNormal];
    
    
    UIImage *icon5 = [IonIcons imageWithIcon:ion_social_github
                                   iconColor:[UIColor whiteColor]
                                    iconSize:50.0f
                                   imageSize:CGSizeMake(50.0f, 50.0f)];
    [self.button5 setImage:icon5 forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:3 animations:^{
        self.imageView.alpha = 1;
         self.imageView.center = CGPointMake(self.imageView.center.x , self.imageView.center.y-125);
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:2 animations:^{
            self.button1.alpha = 1;
            self.button2.alpha = 1;
            self.button3.alpha = 1;
            self.button4.alpha = 1;
            self.button5.alpha = 1;
            self.label1.alpha = 1;
            self.label2.alpha = 1;
            
            self.button1.center = CGPointMake(self.button1.center.x , self.button1.center.y+100);
            self.button2.center = CGPointMake(self.button2.center.x , self.button2.center.y+100);
            self.button3.center = CGPointMake(self.button3.center.x , self.button3.center.y+100);
            self.button4.center = CGPointMake(self.button4.center.x , self.button4.center.y+100);
            self.button5.center = CGPointMake(self.button5.center.x , self.button5.center.y+100);
        }];
    }];
    }
- (IBAction)button2Pressed:(id)sender {
    NSURL *url1 = [NSURL URLWithString:@"https://www.facebook.com/sahil.dhawan.98"];
    [[UIApplication sharedApplication] openURL:url1];
}
- (IBAction)button3Pressed:(id)sender {
    NSURL *url1 = [NSURL URLWithString:@"https://twitter.com/sahild_6"];
    [[UIApplication sharedApplication] openURL:url1];
}
- (IBAction)button4Pressed:(id)sender {
    
    NSURL *url1 = [NSURL URLWithString:@"https://in.linkedin.com/in/sahil-dhawan-12807098"];
    [[UIApplication sharedApplication] openURL:url1];
}
- (IBAction)button5pressed:(id)sender {
    NSURL *url1 = [NSURL URLWithString:@"https://github.com/sahild6"];
    [[UIApplication sharedApplication] openURL:url1];
}
- (IBAction)button1pressed:(id)sender {
    NSURL *url1 = [NSURL URLWithString:@"https://plus.google.com/u/0/117227880607473351896"];
    [[UIApplication sharedApplication] openURL:url1];
}

@end

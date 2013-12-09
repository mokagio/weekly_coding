//
//  VCCButtonsViewController.m
//  ViewControllerContainment
//
//  Created by Gio on 09/12/2013.
//  Copyright (c) 2013 Bizzby. All rights reserved.
//

#import "VCCButtonsViewController.h"

@interface VCCButtonsViewController ()
@property (nonatomic, strong) UIButton *firstButton;
@property (nonatomic, strong) UIButton *secondButton;
@end

@implementation VCCButtonsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    CGRect buttonFrame = CGRectMake(0, 0, 160, 50);
    
    self.firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.firstButton.frame = buttonFrame;
    self.firstButton.tintColor = [UIColor orangeColor];
    [self.firstButton setTitle:@"First" forState:UIControlStateNormal];
    [self.view addSubview:self.firstButton];
    
    self.secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.secondButton.frame = buttonFrame;
    self.secondButton.tintColor = [UIColor blueColor];
    [self.secondButton setTitle:@"Second" forState:UIControlStateNormal];
    [self.view addSubview:self.secondButton];
    
    [self.firstButton addTarget:self
                         action:@selector(firstTouched)
               forControlEvents:UIControlEventTouchUpInside];
    
    [self.secondButton addTarget:self
                          action:@selector(secondButton)
                forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewDidLayoutSubviews
{
    CGPoint firstCenter;
    firstCenter.x = self.view.frame.size.width / 2;
    firstCenter.y = self.view.frame.size.height / 2 - self.firstButton.frame.size.height / 2;
    self.firstButton.center = firstCenter;
    
    CGPoint secondCenter;
    secondCenter.x = self.view.frame.size.width / 2;
    secondCenter.y = self.view.frame.size.height / 2 + self.secondButton.frame.size.height / 2;
    self.secondButton.center = secondCenter;
}

#pragma mark - User Interaction

- (void)firstTouched
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
                                                    message:@"Frist Touched!"
                                                   delegate:nil
                                          cancelButtonTitle:@"Cool"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)secondTouched
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
                                                    message:@"Second Touched!"
                                                   delegate:nil
                                          cancelButtonTitle:@"Cool"
                                          otherButtonTitles:nil];
    [alert show];
}

@end

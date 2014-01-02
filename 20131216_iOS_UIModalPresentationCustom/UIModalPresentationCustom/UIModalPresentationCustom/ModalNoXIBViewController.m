//
//  ModalNoXIBViewController.m
//  UIModalPresentationCustom
//
//  Created by Gio on 16/12/2013.
//  Copyright (c) 2013 mokagio. All rights reserved.
//

#import "ModalNoXIBViewController.h"

@interface ModalNoXIBViewController ()
@property (nonatomic, strong) UIButton *dismissButton;
@end

@implementation ModalNoXIBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    self.dismissButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 160, 80)];
    [self.dismissButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.dismissButton setTitle:@"Dismiss" forState:UIControlStateNormal];
    [self.view addSubview:self.dismissButton];
    
    [self.dismissButton addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    self.dismissButton.center = self.view.center;
}

- (void)dismiss
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end

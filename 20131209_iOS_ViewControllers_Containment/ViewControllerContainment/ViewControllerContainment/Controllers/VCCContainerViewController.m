//
//  VCCContainerViewController.m
//  ViewControllerContainment
//
//  Created by Gio on 09/12/2013.
//  Copyright (c) 2013 Bizzby. All rights reserved.
//

#import "VCCContainerViewController.h"

#import "VCCButtonsViewController.h"
#import "VCCSegmentViewController.h"

@interface VCCContainerViewController ()

@end

@implementation VCCContainerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    VCCButtonsViewController *buttonsViewController = [[VCCButtonsViewController alloc] init];
    [self addChildViewController:buttonsViewController];
    buttonsViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, 140);
    [self.view addSubview:buttonsViewController.view];
    [buttonsViewController didMoveToParentViewController:self];
    
    VCCSegmentViewController *segmentsViewController = [[VCCSegmentViewController alloc] init];
    [self addChildViewController:segmentsViewController];
    segmentsViewController.view.frame = CGRectMake(0, self.view.frame.size.height - 140, self.view.frame.size.width, 140);
    [self.view addSubview:segmentsViewController.view];
    [segmentsViewController didMoveToParentViewController:self];
}

@end

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
    
//    See:
//    https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/CreatingCustomContainerViewControllers/CreatingCustomContainerViewControllers.html
//    
//    Here’s what the code does:
//    
//    1. It calls the container’s addChildViewController: method to add the child. Calling the addChildViewController: method also calls the child’s willMoveToParentViewController: method automatically.
//    2. It accesses the child’s view property to retrieve the view and adds it to its own view hierarchy. The container sets the child’s size and position before adding the view; containers always choose where the child’s content ap`pears. Although this example does this by explicitly setting the frame, you could also use layout constraints to determine the view’s position.
//    3. It explicitly calls the child’s didMoveToParentViewController: method to signal that the operation is complete.
    
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

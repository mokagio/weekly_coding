//
//  VCCSegmentViewController.m
//  ViewControllerContainment
//
//  Created by Gio on 09/12/2013.
//  Copyright (c) 2013 Bizzby. All rights reserved.
//

#import "VCCSegmentViewController.h"

@interface VCCSegmentViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
- (IBAction)segmentControlValueChanged:(id)sender;
@end

@implementation VCCSegmentViewController

- (IBAction)segmentControlValueChanged:(UISegmentedControl *)segmentControl {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
                                                    message:[NSString stringWithFormat:@"Selected segment at index %d", segmentControl.selectedSegmentIndex]
                                                   delegate:nil
                                          cancelButtonTitle:@"Cool"
                                          otherButtonTitles:nil];
    [alert show];
}
@end

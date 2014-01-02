//
//  ViewController.m
//  PickADate
//
//  Created by Gio on 02/01/2014.
//  Copyright (c) 2014 mokagio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // I was wandering if we can actually change the height of the picker...
//
//    CGRect datePickerFrame = CGRectMake(0, 0, self.view.frame.size.width / 2, 50);
//    UIDatePicker *datePicker = [[UIDatePicker alloc] initWithFrame:datePickerFrame];
//    datePicker.layer.borderColor = [UIColor redColor].CGColor;
//    datePicker.layer.borderWidth = 1;
//    
    // ...you can't

    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
    datePicker.center = self.view.center;
    
    // We have to configure the UIDatePicker with a selector to handle it's events
    // Form the docs
//    When properly configured, a UIDatePicker object sends an action message when a user finishes
//    rotating one of the wheels to change the date or time; the associated control event is
//    UIControlEventValueChanged.
    [datePicker addTarget:self
                   action:@selector(datePickerValueChanged:)
         forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:datePicker];
}

- (void)datePickerValueChanged:(UIDatePicker *)sender
{
    NSLog(@"%@", sender.date);
}

@end

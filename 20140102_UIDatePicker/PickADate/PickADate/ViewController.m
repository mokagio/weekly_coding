//
//  ViewController.m
//  PickADate
//
//  Created by Gio on 02/01/2014.
//  Copyright (c) 2014 mokagio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)doneButtonPressed:(id)sender;
@property (nonatomic, strong) NSDate *date;
@end

@implementation ViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        self.date = [NSDate date];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    I was wandering if we can actually change the height of the picker...
//
//    CGRect datePickerFrame = CGRectMake(0, 0, self.view.frame.size.width / 2, 50);
//    UIDatePicker *datePicker = [[UIDatePicker alloc] initWithFrame:datePickerFrame];
//    datePicker.layer.borderColor = [UIColor redColor].CGColor;
//    datePicker.layer.borderWidth = 1;
//    
//    ...you can't

    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
    datePicker.date = self.date;
    datePicker.center = self.view.center;
    
//    We have to configure the UIDatePicker with a selector to handle it's events
//    Form the docs:
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
    self.date = sender.date;
}

- (IBAction)doneButtonPressed:(id)sender {
    NSString *message = [NSString stringWithFormat:@"The date you picked is: %@.\n I'm good, am I not?! ;)", self.date];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

@end

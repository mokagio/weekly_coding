//
//  ViewController.m
//  UIModalPresentationCustom
//
//  Created by Gio on 16/12/2013.
//  Copyright (c) 2013 mokagio. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController ()
- (IBAction)presentModalViewController:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentModalViewController:(id)sender {
    ModalViewController *modal = [[ModalViewController alloc] init];
    [self presentViewController:modal animated:YES completion:nil];
}

@end

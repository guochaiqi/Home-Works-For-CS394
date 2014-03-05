//
//  ViewController.m
//  BlackJackGameHW1CS314
//
//  Created by Jacky Guo on 3/3/14.
//  Copyright (c) 2014 Jacky Guo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *betLable;
@property (weak, nonatomic) IBOutlet UIStepper *betincrementvalue;

@end

@implementation ViewController

- (IBAction)valueChanged:(UIStepper *)sender {
    NSInteger value = [sender value];
    
    [[self betLable] setText:[NSString stringWithFormat:@"%ld", (long)value]];
}




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

@end

//
//  ViewController.m
//  BlackJackGameHW1CS314
//
//  Created by Jacky Guo on 3/3/14.
//  Copyright (c) 2014 Jacky Guo. All rights reserved.
//

#import "ViewController.h"
#import "player.h"
#import "Card.h"
#import "deck.h"

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
    player * player1 = [[player alloc]initPlayer:2000];//makes a player with 2000 dollars in the bank
    player * dealer = [[player alloc ] init];
    deck * deck1 = [[deck alloc]init];
    [deck1 whatsInDeck];
    //[deck1 shuffle];
    //[deck1 whatsInDeck];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

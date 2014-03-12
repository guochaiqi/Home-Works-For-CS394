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


@end

@implementation ViewController

@synthesize theDeck, thePlayer, theDealer;


- (IBAction)valueChanged:(UIStepper *)sender {
    NSInteger value = [sender value];
    
    [[self betLable] setText:[NSString stringWithFormat:@"%ld", (long)value]];
}




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.thePlayer = [[player alloc]initPlayer:2000];//makes a player with 2000 dollars in the bank
    self.theDealer = [[player alloc ] initPlayer:9000];
    self.theDeck = [[deck alloc]init];
    [[self theDeck] whatsInDeck];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hitButton:(id)sender {
    [[self thePlayer]getCard: self.theDeck.draw];
    
}

- (IBAction)dealButton:(id)sender {
    [[self thePlayer] newHand:[[self theDeck] draw] card2:[[self theDeck] draw] ];
    [[self theDealer] newHand:[[self theDeck] draw] card2:[[self theDeck] draw] ];

}
@end

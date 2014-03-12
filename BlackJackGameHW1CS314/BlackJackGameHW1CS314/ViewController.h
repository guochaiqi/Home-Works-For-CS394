//
//  ViewController.h
//  BlackJackGameHW1CS314
//
//  Created by Jacky Guo on 3/3/14.
//  Copyright (c) 2014 Jacky Guo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "player.h"
#import "Card.h"
#import "deck.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *betLable;
@property (weak, nonatomic) IBOutlet UIStepper *betincrementvalue;

@property (weak, nonatomic) IBOutlet UIButton *standButton;
@property (weak, nonatomic) IBOutlet UILabel *bankValue;
@property player * theDealer;
@property player * thePlayer;
@property deck * theDeck;


- (IBAction)hitButton:(id)sender;
- (IBAction)dealButton:(id)sender;


@end

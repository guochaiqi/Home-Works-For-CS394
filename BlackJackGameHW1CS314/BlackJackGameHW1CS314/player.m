//
//  player.m
//  BlackJackGameHW1CS314
//
//  Created by Jacky Guo on 3/4/14.
//  Copyright (c) 2014 Jacky Guo. All rights reserved.
//

#import "player.h"

@implementation player
@synthesize hand, bank ;

-(id) initPlayer:(NSInteger)bank1{
    self.bank = bank1;
    return self;
}
-(void)getCard :(Card*)cardFromDeck{//meant for hits
    [hand addObject:cardFromDeck];//
    
}
-(void)newHand:(Card*)firstcardsFromDeck card2:(Card *)secondCardFromDeck{//resets the hand
    [hand removeAllObjects];
    [hand addObject:firstcardsFromDeck];
    [hand addObject:secondCardFromDeck];
}

@end

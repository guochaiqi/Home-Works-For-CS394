//
//  player.h
//  BlackJackGameHW1CS314
//
//  Created by Jacky Guo on 3/4/14.
//  Copyright (c) 2014 Jacky Guo. All rights reserved.
//
#import "Card.h"
#import <Foundation/Foundation.h>

@interface player : NSObject{
    
}

@property NSMutableArray* hand;
@property NSInteger bank;
-(id) initPlayer:(NSInteger) bank;

-(void)getCard:(Card*) cardFromDeck;

-(void)newHand: (Card*)firstCardFromDeck card2:(Card*) secondCardFromDeck;
-(void)whatsInHand;


@end

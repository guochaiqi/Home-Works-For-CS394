//
//  deck.m
//  BlackJackGameHW1CS314
//
//  Created by Jacky Guo on 3/3/14.
//  Copyright (c) 2014 Jacky Guo. All rights reserved.
//
#import "card.h"
#import "deck.h"

@implementation deck
@synthesize cards, cardNumInArray;
-(id) init{
    cards = [[NSMutableArray alloc ] init];
    for(int suit = 1; suit <= 4; suit++)
    {
        for(int value = 1; value < 14; value++)
        {
            Card * card = [[Card alloc] initCard:value suit:suit];//makes a deck by filling with all clubs  from ace to king then spades from ace to king diamonds......hearts....
            [cards addObject:card];
        }
    }
    cardNumInArray = 0;
    return self;
}
                           
-(void)shuffle {//shuffle works by making a temporary array and taking cards form the original deck to the temp array. after the cards will be removed from the original deck. this will continue until the original deck is empty. after it is all done the origianl deck pointer will be pointing at the temp array
    NSMutableArray *array = [[NSMutableArray alloc]init];
    while([cards count] > 0){
        NSInteger newRandNum = arc4random() %[cards count];
        [array addObject:[cards objectAtIndex:newRandNum]];
        [cards removeObjectAtIndex:newRandNum];
    }
    cards = array;
}

-(Card* )draw{//simply returns card the iterator is pointing to then increments iterator
    if(cardNumInArray > 52){
        cardNumInArray = 0;
    }
    cardNumInArray ++;
    return [cards objectAtIndex:cardNumInArray-1];
}
    

@end

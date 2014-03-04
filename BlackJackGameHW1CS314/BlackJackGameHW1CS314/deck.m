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
            Card * card = [[Card alloc] initCard:value suit:suit];
            [cards addObject:card];
        }
    }
    cardNumInArray = 0;
    return self;
}
                           
-(void)shuffle {
    NSMutableArray *array = [[NSMutableArray alloc]init];
    while([cards count] > 0){
        NSInteger newRandNum = arc4random() %[cards count];
        [array addObject:[cards objectAtIndex:newRandNum]];
        [cards removeObjectAtIndex:newRandNum];
    }
}

-(Card* )draw{
    if(cardNumInArray > 52){
        cardNumInArray = 0;
    }
    cardNumInArray ++;
    return [cards objectAtIndex:cardNumInArray-1];
}
    

@end

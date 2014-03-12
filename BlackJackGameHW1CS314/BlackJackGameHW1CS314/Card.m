//
//  Card.m
//  BlackJackGameHW1CS314
//
//  Created by Jacky Guo on 3/3/14.
//  Copyright (c) 2014 Jacky Guo. All rights reserved.
//

#import "Card.h"

@implementation Card

@synthesize value,suit;

- (id) initCard:(NSInteger)value1 suit:(NSInteger)suit1{
    self.value = value1;
    if(suit1 == 1){
        self.suit = 'c';
    }
    else if(suit1 == 2){
        self.suit   = 's';
    }
    else if(suit1 == 3){
        self.suit = 'd';
    }
    else{
        self.suit = 'h';
    }
    self.fileName = [NSString stringWithFormat:@"%02d%c.png",value , suit];
    return self;
}


@end

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
    self.suit = suit1;
    return self;
}


@end

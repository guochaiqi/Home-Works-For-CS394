//
//  Card.h
//  BlackJackGameHW1CS314
//
//  Created by Jacky Guo on 3/3/14.
//  Copyright (c) 2014 Jacky Guo. All rights reserved.
//

#import <Foundation/Foundation.h>



//count ace as 1 or 11 calculations will vary based on the total score
//count face cards as 11 to 13 but restrict actual calculation values to 10
@interface Card : NSObject{
    NSInteger value;
    NSInteger suit;// 1 = clubs 2 = spades 3 = diamonds 4 = hearts
    
}
@property NSInteger value;
@property NSInteger suit;
-(id) initCard: (NSInteger) value1 suit:(NSInteger) suit1;

@end

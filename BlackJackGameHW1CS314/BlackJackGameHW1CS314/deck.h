//
//  deck.h
//  BlackJackGameHW1CS314
//
//  Created by Jacky Guo on 3/3/14.
//  Copyright (c) 2014 Jacky Guo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface deck : NSObject{
    
}
@property NSMutableArray *cards;
@property NSInteger cardNumInArray;
-(void) shuffle;
-(Card*) draw;


@end

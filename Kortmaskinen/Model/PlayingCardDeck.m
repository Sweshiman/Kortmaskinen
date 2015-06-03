//
//  PlayingCardDeck.m
//  Kortmaskinen
//
//  Created by Alexander Karlsson on 2015-06-03.
//  Copyright (c) 2015 Alexander Karlsson. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(instancetype)init
{
    [self init]
    
    if(self){
        for(NSString *suit in [PlayingCard validSuits]){
            for(NSUInteger rank=1; rank<=[PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc] init]
                card.suit = suit;
                card.rank = rank;
                [self addCard:card];
            }
        }
    }
}
@end
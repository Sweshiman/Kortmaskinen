//
//  Deck.m
//  Kortmaskinen
//
//  Created by Alexander Karlsson on 2015-06-03.
//  Copyright (c) 2015 Alexander Karlsson. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *theDeck;
@end

@implementation Deck

-(NSMutableArray *) theDeck
{
    if(!_theDeck){
        _theDeck = [[NSMutableArray alloc] init];
    }
    return _theDeck;
}

-(void)addCard:(Card *) card atTop:(BOOL) atTop
{
    if(atTop){
        [self.theDeck insertObject:card atIndex:0];
    }else{
        [self.theDeck addObject:card];
    }
}

-(void)addCard:(Card *) card
{
    [self addCard:card atTop:NO];
}

-(Card *)drawRandomCard
{
    Card *card = nil;
    
    if([self.theDeck count]){
        unsigned index = arc4random() % [self.theDeck count];
        card = self.theDeck[index];
        [self.theDeck removeObject:card];
    }

    return card;
}

@end

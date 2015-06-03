//
//  PlayingCard.m
//  Kortmaskinen
//
//  Created by Alexander Karlsson on 2015-06-03.
//  Copyright (c) 2015 Alexander Karlsson. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

- (NSString *)contents
{
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *)validSuits
{
    return @[@"♠︎",@"♣︎",@"♥︎",@"♦︎"];
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",
             @"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank
{
    return [[PlayingCard rankStrings] count]-1;
}

- (void)setRank:(NSUInteger)rank
{
    if(rank<=[PlayingCard maxRank]){
        _rank = rank;
    }
}

- (void)setSuit:(NSString *)suit
{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";
}

@end

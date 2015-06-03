//
//  PlayingCard.h
//  Kortmaskinen
//
//  Created by Alexander Karlsson on 2015-06-03.
//  Copyright (c) 2015 Alexander Karlsson. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;


@end

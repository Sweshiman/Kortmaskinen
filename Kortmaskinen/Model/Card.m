//
//  Card.m
//  Kortmaskinen
//
//  Created by Alexander Karlsson on 2015-06-02.
//  Copyright (c) 2015 Alexander Karlsson. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}

@end
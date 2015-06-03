//
//  Deck.h
//  Kortmaskinen
//
//  Created by Alexander Karlsson on 2015-06-03.
//  Copyright (c) 2015 Alexander Karlsson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *) card atTop:(BOOL) atTop;
-(void)addCard:(Card *) card;

-(Card *)drawRandomCard;

@end

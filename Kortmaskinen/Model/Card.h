//
//  Card.h
//  Kortmaskinen
//
//  Created by Alexander Karlsson on 2015-06-02.
//  Copyright (c) 2015 Alexander Karlsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
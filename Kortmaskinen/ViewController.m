//
//  ViewController.m
//  Kortmaskinen
//
//  Created by Alexander Karlsson on 2015-06-02.
//  Copyright (c) 2015 Alexander Karlsson. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (strong, nonatomic) PlayingCardDeck *deck;
@end

@implementation ViewController
- (IBAction)cardPressed:(UIButton *)sender {
    if([[sender currentTitle] length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:nil forState:UIControlStateNormal];
    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState: UIControlStateNormal];
        NSString *cardString = [[self.deck drawRandomCard] contents];
        [sender setTitle:cardString forState:UIControlStateNormal];
    }
}

-(PlayingCardDeck *)deck
{
    if(!_deck){
        _deck = [[PlayingCardDeck alloc]init];
    }
    return _deck;
}
@end

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
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation ViewController
- (IBAction)cardPressed:(UIButton *)sender {
    if([[sender currentTitle] length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:nil forState:UIControlStateNormal];
    }else{
        Card *card = [self.deck drawRandomCard];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState: UIControlStateNormal];
        if(card.contents){
            NSString *cardString = card.contents;
            [sender setTitle:cardString forState:UIControlStateNormal];
        }else{
            [sender setTitle:@"??" forState:UIControlStateNormal];
        }
    }
    [self addFlip];
}

- (void)addFlip
{
    self.flipCount++;
    [self.flipLabel setText:[NSString stringWithFormat:@"%@%d",@"Vändningar: ",self.flipCount]];
}

-(Deck *)deck
{
    if(!_deck){
        _deck = [[PlayingCardDeck alloc]init];
    }
    return _deck;
}
@end

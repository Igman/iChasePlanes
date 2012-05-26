//
//  PlanesDeck.m
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlanesDeck.h"
#import "PlaneCard.h"

@implementation PlanesDeck
@synthesize availableCards  = _availableCards;
@synthesize activeDeck = _activeDeck;
@synthesize discardDeck = _discardDeck;

-(id) init{
    //TODO handle empty card set better
    NSArray *avaiableCards = [[NSArray alloc] init];
    return [self initWithAvailableCards:avaiableCards];
}

-(id) initWithAvailableCards:(NSArray *)cards{
    if(self = [super init]){
        self.availableCards = cards;
        [self buildDeck];
    }
    NSLog(@"planes deck created");
    return self;
}

-(PlaneCard*) drawPlaneCard{
    //Grabs a random plane from the deck
    if([self.activeDeck count] == 0){
        NSLog(@"rebuilding deck");
        [self buildDeck];
    }
    srand(time(nil));
    int index = rand()%[self.activeDeck count];
    PlaneCard *card = [self.activeDeck objectAtIndex:index];
    [self.activeDeck removeObjectAtIndex:index];
    [self.discardDeck addObject:card];
    int count = [self.activeDeck count];
    NSLog(@"%i",count);
    return card;
}

-(void) buildDeck{
    self.discardDeck = [[NSMutableArray alloc] init];  
    self.activeDeck = [[NSMutableArray alloc] initWithArray:self.availableCards];
}

@end
 
//
//  PlanesDeck.h
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PlaneCard;

@interface PlanesDeck : NSObject
    
@property (strong) NSArray* availableCards;
@property (strong) NSMutableArray* activeDeck;
@property (strong) NSMutableArray* discardDeck;

- (id)init;
- (id)initWithAvailableCards:(NSArray*)cards;
- (PlaneCard*)drawPlaneCard;
- (void) buildDeck;

@end

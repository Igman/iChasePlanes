//
//  PlanesDeck.m
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlanesDeck.h"

@implementation PlanesDeck

-(id) init{
    if(self = [super init]){
        planes = [self buildPlanesDeck];
    }
    NSLog(@"planes deck created");
    return self;
}

//Creaters the planes deck
-(NSMutableArray*)buildPlanesDeck{
    NSMutableArray* deck = [[NSMutableArray alloc] init];
    [deck addObject:[[NSBundle mainBundle] pathForResource:@"academy-at-tolaria-west" ofType:@"jpeg"]];
    [deck addObject:[[NSBundle mainBundle] pathForResource:@"llanowar" ofType:@"jpeg"]];
    [deck addObject:[[NSBundle mainBundle] pathForResource:@"minamo" ofType:@"jpeg"]];
    return deck;
}

-(NSImage*) planeswalk{
    //Grabs a random plane from the deck
    srand(time(nil));
    int index = rand()%[planes count];
    NSString* imagePath = [planes objectAtIndex:index];
    [planes removeObjectAtIndex:index];
    NSImage* planeImage = [[NSImage alloc] initWithContentsOfFile:imagePath];
    
    //Rebuilds the deck if it is empty
    if([planes count] == 0){
        planes = [self buildPlanesDeck];
    }
    
    return planeImage;
}

@end

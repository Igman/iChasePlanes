//
//  AppDelegate.m
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "PlanesDeck.h"
#import "PlaneCard.h"
#import "PlanesXMLLoader.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize mainImageView = _mainImageView;
@synthesize planesDeck = _planesDeck;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSString* xmlFile = [[NSBundle mainBundle] pathForResource:@"planes" ofType:@"xml"];
    self.planesDeck = [PlanesXMLLoader getDeckFromXMLFile:xmlFile];
    NSLog(@"application loaded");
}

- (IBAction)peformPlaneswalk:(id)sender {
    PlaneCard *card = [self.planesDeck drawPlaneCard];
    NSImage *cardImage = [[NSImage alloc] initWithContentsOfFile:card.imagePath];
    [self.mainImageView setImage:cardImage];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication{
    return YES;
}

@end

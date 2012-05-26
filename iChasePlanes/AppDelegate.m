//
//  AppDelegate.m
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "PlanesDeck.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize llanowarButton = _llanowarButton;
@synthesize mainImageView = _mainImageView;
@synthesize planesDeck = _planesDeck;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.planesDeck = [[PlanesDeck alloc] init];
    NSLog(@"application loaded");
}

- (IBAction)peformPlaneswalk:(id)sender {
    NSImage* planeImage = [self.planesDeck planeswalk];
    [self.mainImageView setImage:planeImage];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication{
    return YES;
}

@end

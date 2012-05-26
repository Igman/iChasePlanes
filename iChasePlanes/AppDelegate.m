//
//  AppDelegate.m
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize academyButton = _academyButton;
@synthesize llanowarButton = _llanowarButton;
@synthesize minamoButton = _minamoButton;
@synthesize mainImageView = _mainImageView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"application loaded");
}

- (IBAction)setPlane:(id)sender {
    NSString* imageName = Nil;
    
    if (sender == self.academyButton){
        imageName = [[NSBundle mainBundle] pathForResource:@"academy-at-tolaria-west" ofType:@"jpeg"];
    }else if (sender == self.llanowarButton){
        imageName = [[NSBundle mainBundle] pathForResource:@"llanowar" ofType:@"jpeg"];
    }else{
        imageName = [[NSBundle mainBundle] pathForResource:@"minamo" ofType:@"jpeg"];
    }
    
    NSImage* imageObj = [[NSImage alloc] initWithContentsOfFile:imageName];
    [self setPlaneImageTo:imageObj];
}

- (void)setPlaneImageTo: (NSImage *)image{
    self.mainImageView.image = image;
}

@end

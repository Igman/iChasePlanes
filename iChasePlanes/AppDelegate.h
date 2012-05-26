//
//  AppDelegate.h
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class PlanesDeck;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (strong) PlanesDeck* planesDeck;

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSImageView *mainImageView;
@property (weak) IBOutlet NSTextField *NameLabel;
@property (weak) IBOutlet NSTextField *PlaneLabel;

- (IBAction)peformPlaneswalk:(id)sender;

@end

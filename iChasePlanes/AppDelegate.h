//
//  AppDelegate.h
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *academyButton;
@property (weak) IBOutlet NSButton *llanowarButton;
@property (weak) IBOutlet NSButton *minamoButton;
@property (weak) IBOutlet NSImageView *mainImageView;

- (IBAction)setPlane:(id)sender;
@end

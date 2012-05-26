//
//  PlaneCard.h
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlaneCard : NSObject

@property (strong) NSString* name;
@property (strong) NSString* plane;
@property (strong) NSString* imagePath;

-(id) initWithName:(NSString*)name onPlane:(NSString*)plane fromImage:(NSString*)imagePath;
@end

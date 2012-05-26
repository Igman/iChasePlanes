//
//  PlaneCard.m
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlaneCard.h"

@implementation PlaneCard

@synthesize name = _name;
@synthesize plane = _plane;
@synthesize imagePath = _imagePath;

-(id) init{
    return [self initWithName:@"default" onPlane:@"default" fromImage:@"default"];
}

-(id) initWithName:(NSString*)name onPlane:(NSString*)plane fromImage:(NSString*)imagePath{
    if(self = [super init]){
        self.name = name;
        self.plane = plane;
        self.imagePath = imagePath;
    }
    return self;
}
@end

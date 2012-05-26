//
//  PlanesXMLLoader.h
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PlanesDeck;

@interface PlanesXMLLoader : NSObject

+ (PlanesDeck*) getDeckFromXMLFile:(NSString*)file;;

@end

//
//  PlanesXMLLoader.h
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PlanesDeck;
@class PlaneCard;

@interface PlanesXMLLoader : NSObject

+ (PlanesDeck*) getDeckFromXMLFile:(NSString*)file;;
+ (NSArray*) buildPlaneCardArrayFromDocument:(NSXMLDocument*)document;
+ (PlaneCard*) createPlaneCardFromXMLNode:(NSXMLNode*)xmlNode;

@end

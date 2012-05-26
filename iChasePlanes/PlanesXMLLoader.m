//
//  PlanesXMLLoader.m
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlanesXMLLoader.h"
#import "PlaneCard.h"
#import "PlanesDeck.h"

@implementation PlanesXMLLoader

+ (PlanesDeck*) getDeckFromXMLFile:(NSString*)file{
    NSXMLDocument *xmlDocument;
    
    //Loads the XML File
    NSError *error = nil;
    
    NSURL *fileURL = [NSURL fileURLWithPath:file];
    
    if(!fileURL){
        NSLog(@"cannot create url for plane card xml file %@", file);
    }
    
    xmlDocument = [[NSXMLDocument alloc] initWithContentsOfURL:fileURL options:(NSXMLNodePreserveWhitespace|NSXMLNodePreserveCDATA) error:&error] ;
    
    if(!xmlDocument){
        NSLog(@"cannot load plane card XML document");
        return nil;
    }
    
    NSLog(@"XML Document Loaded");
    
    NSArray *planeCards = [self buildPlaneCardArrayFromDocument:xmlDocument];
    
    PlanesDeck *deck = [[PlanesDeck alloc] initWithAvailableCards:planeCards];
    return deck;
}

+ (NSArray*) buildPlaneCardArrayFromDocument:(NSXMLDocument*)document{
    NSError* error = nil;
    
    //Grabs and processes each card node
    NSMutableArray *planeCards = [[NSMutableArray alloc] init];
    NSArray *planeCardNodes = [document nodesForXPath:@"//plane-cards/plane-card" error:&error];
    for(NSXMLNode* node in planeCardNodes){
        PlaneCard *card = [self createPlaneCardFromXMLNode:node];
        [planeCards addObject:card];
    }
    return planeCards;
}

//Marshals the xml into a plane card object
+ (PlaneCard*) createPlaneCardFromXMLNode:(NSXMLNode*)xmlNode{
    NSError* error = nil;
    
    NSXMLNode* nameNode = [[xmlNode nodesForXPath:@"./name" error:&error] objectAtIndex:0];
    NSString* nameString = [nameNode stringValue];
    
    NSXMLNode* planeNode = [[xmlNode nodesForXPath:@"./plane" error:&error] objectAtIndex:0];
    NSString* planeString = [planeNode stringValue];
    
    NSXMLNode* imageFileNode = [[xmlNode nodesForXPath:@"./image-file" error:&error] objectAtIndex:0];
    NSString* imageFileString = [imageFileNode stringValue]; 
    NSXMLNode* imageFormatNode = [[xmlNode nodesForXPath:@"./image-file/@format" error:&error] objectAtIndex:0];
    NSString* imageFormatString = [imageFormatNode stringValue]; 
    NSString* imagePathString = [[NSBundle mainBundle] pathForResource:imageFileString ofType:imageFormatString];
    
    PlaneCard* planeCard = [[PlaneCard alloc] initWithName:nameString onPlane:planeString fromImage:imagePathString];
    return planeCard;    
}

@end
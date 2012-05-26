//
//  PlanesDeck.h
//  iChasePlanes
//
//  Created by Ignacio Rodriguez on 12-05-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlanesDeck : NSObject{
    
    NSMutableArray* planes;
}

- (id)init;
- (NSImage*)planeswalk;
- (NSMutableArray*)buildPlanesDeck;

@end

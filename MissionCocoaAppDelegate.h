//
//  MissionCocoaAppDelegate.h
//  MissionCocoa
//
//  Created by Huapeng Qi on 12/2/12.
//  Copyright 2012 UC Berkeley. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MissionCocoaAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end

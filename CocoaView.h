//
//  CocoaView.h
//  MissionCocoa
//
//  Created by Huapeng Qi on 12/2/12.
//  Copyright 2012 UC Berkeley. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class CocoaViewController;

@interface CocoaView : NSView {
@private 
	IBOutlet CocoaViewController* mViewController;
	
}
@property(retain)IBOutlet CocoaViewController* mViewController;
@end

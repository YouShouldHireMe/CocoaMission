//
//  CocoaViewController.h
//  MissionCocoa
//
//  Created by Huapeng Qi on 12/2/12.
//  Copyright 2012 UC Berkeley. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CocoaView.h"
#import "CocoaModel.h"

@interface CocoaViewController : NSViewController {
@private
	CocoaModel* mModel;
	IBOutlet CocoaView* mView;
	bool _running;
}
@property(retain)IBOutlet CocoaView* mView;

- (CGRect) askModelForEnemyBound: (NSInteger)eIndex;
- (NSInteger) askModelForNumberOfEnemies;

@end

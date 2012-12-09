//
//  CocoaView.m
//  MissionCocoa
//
//  Created by Huapeng Qi on 12/2/12.
//  Copyright 2012 UC Berkeley. All rights reserved.
//

#import "CocoaView.h"
#import "CocoaViewController.h"

@implementation CocoaView
@synthesize mViewController;

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
	//Draw bound
	[[NSColor blackColor] setStroke];
	NSBezierPath* framePath = [NSBezierPath bezierPathWithRect:[self bounds]];
	[framePath setLineWidth:1.0];
	[framePath stroke];
	//Draw enemy
	NSInteger enemiesCount = [mViewController askModelForNumberOfEnemies];
	printf("%d\n", enemiesCount);
	for (NSInteger i = 0; i < enemiesCount; i++)
	{
		NSBezierPath* enemyPath = [NSBezierPath bezierPathWithRect:[mViewController askModelForEnemyBound:i]];
		[enemyPath setLineWidth:1.0];
		[enemyPath stroke];
	}
}

@end

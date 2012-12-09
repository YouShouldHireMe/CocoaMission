//
//  CocoaViewController.m
//  MissionCocoa
//
//  Created by Huapeng Qi on 12/2/12.
//  Copyright 2012 UC Berkeley. All rights reserved.
//

#import "CocoaViewController.h"
#import "CocoaModel.h"


@implementation CocoaViewController
@synthesize mView;
-(void)awakeFromNib{
	mModel = [[CocoaModel alloc] initWithBound:[mView bounds]];
	_running = YES;
	[mModel createEnemy];
	printf("created new enemy\n");
	
}

-(CGRect)askModelForEnemyBound:(NSInteger)eIndex{
	return [mModel enemyBound:eIndex];
}

-(NSInteger)askModelForNumberOfEnemies{
	return [mModel numberOfEnemies];
}
@end


//
//  CocoaModel.h
//  MissionCocoa
//
//  Created by Huapeng Qi on 12/2/12.
//  Copyright 2012 UC Berkeley. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface CocoaModel : NSObject {
	NSMutableArray* _enemies;
	CGRect _bound;
}

-(id)initWithBound:(CGRect)myBound;
-(void)createEnemy;
-(void)moveEnemies;
-(void)killEnemy;
-(CGRect)enemyBound:(NSInteger)eIndex;
-(NSInteger)numberOfEnemies;

@end

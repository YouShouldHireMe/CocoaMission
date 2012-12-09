//
//  CocoaModel.m
//  MissionCocoa
//
//  Created by Huapeng Qi on 12/2/12.
//  Copyright 2012 UC Berkeley. All rights reserved.
//

#import "CocoaModel.h"
@interface enemy : NSObject
{
	NSInteger xPos;
	NSInteger yPos;
	NSInteger Vel;
}
@property(assign)NSInteger xPos;
@property(assign)NSInteger yPos;
@property(assign)NSInteger Vel;

-(id)initWith:(NSInteger)xPosition and: (NSInteger)yPosition and: (NSInteger)Velocity;
-(void)move;
-(CGRect)bound;

@end

@implementation enemy
@synthesize xPos, yPos, Vel;

-(id)initWith:(NSInteger)xPosition and: (NSInteger)yPosition and: (NSInteger)Velocity{
	[super init];
	if (self) {
		xPos = xPosition;
		yPos = yPosition;
		Vel = Velocity;
	}
	printf("init success!\n");
	return self;
}


-(void) move{
	xPos += Vel;
}

-(CGRect)bound{
	CGRect mBound = CGRectMake(xPos, yPos, 48, 48);
	return mBound;
}

@end


@implementation CocoaModel

-(id)initWithBound:(CGRect)myBound{
	[super init];
	if (self) {
		_bound = myBound;
		_enemies = [[NSMutableArray alloc] init];
	}
	return self;
}

-(void)createEnemy{
	printf("haha\n");
	enemy* newEnemy;
	int leftEdge = _bound.origin.x;
	int topEdge = _bound.origin.y;
	//int rightEdge = leftEdge + _bound.size.width;
	//int bottomEdge = topEdge + _bound.size.height;
	NSInteger myX = leftEdge + 50;
	NSInteger myY = 50;
	newEnemy = [[enemy alloc] initWith:myX and:myY and:3];
	printf("boo\n");
	[_enemies addObject:newEnemy];
	printf("haha%d\n", [_enemies count]);
}

-(void)moveEnemies{
	for (enemy* myEnemy in _enemies) {
		[myEnemy move];
	}
}

-(void)killEnemy{
}

//[object method:argument]

-(CGRect)enemyBound:(NSInteger)eIndex{
	return [[_enemies objectAtIndex:eIndex] bound];
}

-(NSInteger)numberOfEnemies{
	return [_enemies count];
}

@end

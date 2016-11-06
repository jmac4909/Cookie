//
//  JMLevel02.m
//  cookie
//
//  Created by Jeremy Mackey on 12/25/15.
//  Copyright © 2015 Jeremy Mackey. All rights reserved.
//

#import "JMLevel02.h"
#import "JMLevel01.h"
@implementation JMLevel02

-(void)didMoveToView:(SKView *)view{
    
    [super didMoveToView:view];
    [self setUpLevel];
}
-(void)setUpLevel{
    //Sets Backgound
    SKSpriteNode* background = [SKSpriteNode spriteNodeWithTexture:[spriteAtlas textureNamed:@"bg"]];
    background.size = self.frame.size;
    background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    background.zPosition = -5;
    [self addChild:background];
    
    //**** Bottom sprite
    SKSpriteNode *bottomLayer = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(self.size.width, 10)];
    bottomLayer.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:bottomLayer.frame];
    bottomLayer.physicsBody.affectedByGravity = NO;
    [bottomLayer setPosition:CGPointMake(self.scene.size.width/2, self.scene.size.height/10)];
    [self addChild:bottomLayer];
    //**** End bottom sprite
    
    [self createCookie];
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/1.2) withScale:.6 and:.5];
    //Add Walls
    [self addWalls];
    //Add Stars
    [self addStars];
    
    cookieStartPoint = CGPointMake(self.frame.size.width/2, self.frame.size.height);
    cookieSprite.position = cookieStartPoint;
    if (cookieSprite.parent == nil) {
        [self addChild:cookieSprite];
        
    }
}
-(void)createCookie{
    //**** Cookie sprite *****
    cookieSprite = [[SKSpriteNode alloc]initWithTexture:[spriteAtlas textureNamed:@"cookiePlayer.png"]];
    
    [cookieSprite setSize:CGSizeMake(cookieSprite.frame.size.width*(1-.120000), cookieSprite.frame.size.height*(1-.120000))];
    
    cookieSprite.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:cookieSprite.frame.size.width/2];
    cookieSprite.physicsBody.affectedByGravity = YES;
    cookieSprite.xScale = 0.17;
    cookieSprite.yScale = 0.17;
    cookieSprite.physicsBody.categoryBitMask = cookieCategory;
    cookieSprite.physicsBody.contactTestBitMask = milkCategory | wallCategory;
    cookieSprite.physicsBody.collisionBitMask = milkCategory | wallCategory;
    cookieSprite.zPosition = 0;
    cookieSprite.physicsBody.dynamic = YES;
    //***** End cookie sprite *****
    
}

-(void)addStars{
    
    
}
-(void)addWalls{
    
}
-(void)endGame{
    
    
    [super endGame];


}
-(void)menuButtonPress{
    
    NSLog(@"menu press");
    [super menuButtonPress];

}
-(void)nextLevelButtonPress{
    
    
    NSLog(@"next press");

    JMLevel01 *scene = [[JMLevel01 alloc]initWithSize:self.size];
    [self.view presentScene:scene];
    
}


@end

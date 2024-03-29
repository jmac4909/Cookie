//
//  JMLevel03.m
//  cookie
//
//  Created by Jeremy Mackey on 11/6/16.
//  Copyright © 2016 Jeremy Mackey. All rights reserved.
//

#import "JMLevel03.h"

@implementation JMLevel03

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
    [super createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/1.2) withScale:.6 and:.5];
    
    
    //Wall
    JMWall *wall = [[JMWall alloc]initWithSize:CGSizeMake(80, 20) withStringNamed:@"woodLog"];
    wall.physicsBody.categoryBitMask = wallCategory;
    wall.physicsBody.contactTestBitMask = cookieCategory;
    wall.physicsBody.collisionBitMask = cookieCategory;

    wall.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/1.87);
    if (wall.parent == nil) {
        [self addChild:wall];
        
    }
    
    cookieStartPoint = CGPointMake(self.frame.size.width/2, self.frame.size.height);
    cookieSprite.position = cookieStartPoint;
    if (cookieSprite.parent == nil) {
        [self addChild:cookieSprite];
        
    }
    

    
 
}
-(void)addStars {
    
    JMStar *star1;
    if (!star1) {
        star1 = [[JMStar alloc]initWithSize:CGSizeMake(30, 30) withStringNamed:@"star"];
    }
    star1.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/1.40);
    star1.physicsBody.categoryBitMask = starCategory;
    star1.physicsBody.contactTestBitMask = cookieCategory;
    star1.physicsBody.collisionBitMask = cookieCategory;
    if (star1.parent == nil) {
        [self addChild:star1];
        
    }
    JMStar *star2 = [[JMStar alloc]initWithSize:CGSizeMake(30, 30) withStringNamed:@"star"];
    star2.position = CGPointMake(self.frame.size.width/9, self.frame.size.height/1.4);
    star2.physicsBody.categoryBitMask = starCategory;
    star2.physicsBody.contactTestBitMask = cookieCategory;
    star2.physicsBody.collisionBitMask = cookieCategory;
    
    if (star2.parent == nil) {
        [self addChild:star2];
        
    }
    JMStar *star3 = [[JMStar alloc]initWithSize:CGSizeMake(30, 30) withStringNamed:@"star"];
    star3.position = CGPointMake(self.frame.size.width/8.8, self.frame.size.height/3.3);
    star3.physicsBody.categoryBitMask = starCategory;
    star3.physicsBody.contactTestBitMask = cookieCategory;
    star3.physicsBody.collisionBitMask = cookieCategory;
    
    if (star3.parent == nil) {
        [self addChild:star3];
        
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

//
//  GameScene.m
//  cookie
//
//  Created by Jeremy Mackey on 10/6/15.
//  Copyright (c) 2015 Jeremy Mackey. All rights reserved.
//


#define kMaxDurtion       0.2



#import "GameScene.h"
#import "JMWall.h"
#import "JMStar.h"

#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )


static const uint32_t cookieCategory = 0x1 <<0;  //cookie collison cattegory
static const uint32_t  milkCategory = 0x1 <<1;  //Milk collision category
static const uint32_t  starCategory = 0x1 <<2;  //Star collision category


@implementation GameScene{
    
    NSTimeInterval startTime;
    SKSpriteNode *cookieSprite;
    SKSpriteNode *tableNode;
    CGPoint touchPoint;
    SKSpriteNode *milkNode;
    SKSpriteNode *milkTopNode;

    SKSpriteNode *topLeft;
    SKSpriteNode *topRight;
    SKSpriteNode *cupLine;
     CGPoint cookieStartPoint;
    int currentLevel;
    BOOL gameOver;

    BOOL isTouching;
}

#pragma mark - World Methods
-(void)didMoveToView:(SKView *)view {
   
    [super didMoveToView:view];
    

 
    //**** Sets up scene ***
    [self.scene.physicsWorld setGravity:CGVectorMake(0, -9.8)];  //Gravity of the world
    self.scene.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];  //Physics body of Scene
    self.physicsBody.restitution = 0.5;  //Makes bouncy walls
    self.physicsWorld.contactDelegate = self; //Alows for collision detection
    gameOver = false;
    

    
    //**** End Scene Set up
    
    

    //**** Cookie sprite *****

    
    SKTextureAtlas *spriteAtlas = [self textureAtlasNamed:@"sprites"];
    cookieSprite = [[SKSpriteNode alloc]initWithTexture:[spriteAtlas textureNamed:@"cookiePlayer.png"]];

    [cookieSprite setSize:CGSizeMake(cookieSprite.frame.size.width*(1-.120000), cookieSprite.frame.size.height*(1-.120000))];
    
    cookieSprite.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:cookieSprite.frame.size.width/2];
    cookieSprite.physicsBody.affectedByGravity = YES;
    cookieSprite.xScale = 0.17;
    cookieSprite.yScale = 0.17;
    cookieSprite.physicsBody.categoryBitMask = cookieCategory;
    cookieSprite.physicsBody.contactTestBitMask = milkCategory ;
    cookieSprite.physicsBody.collisionBitMask = milkCategory;
    cookieSprite.physicsBody.dynamic = YES;
     //***** End cookie sprite *****

//    NSLog(@"Name: %@",[spriteAtlas textureNames]);
    
    SKSpriteNode* background = [SKSpriteNode spriteNodeWithTexture:[spriteAtlas textureNamed:@"bg"]];
    background.size = self.frame.size;
    background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    background.zPosition = -1;
    [self addChild:background];
    
       //**** Bottom sprite
    SKSpriteNode *bottomLayer = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(self.size.width, 10)];
    bottomLayer.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:bottomLayer.frame];
    bottomLayer.physicsBody.affectedByGravity = NO;
    [bottomLayer setPosition:CGPointMake(self.scene.size.width/2, self.scene.size.height/10)];
    [self addChild:bottomLayer];
    //**** End bottom sprite


    [self setLevelToInt:1];
    
}
-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    if (isTouching) {
        CGFloat dt = 3.0/60.0;
        CGVector distance = CGVectorMake(touchPoint.x - cookieSprite.position.x, touchPoint.y-cookieSprite.position.y);
        CGVector velocity = CGVectorMake(distance.dx/dt, distance.dy/dt);
        [cookieSprite.physicsBody setVelocity:velocity];
        
    }
}
#pragma mark - Touch Events
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    //Make cookie class and add that bool

    UITouch *touch = [touches anyObject];
    startTime = touch.timestamp;
    CGPoint location = [touch locationInNode:self];
    if ([cookieSprite containsPoint:location] && [self cookieOnGround]) {
        touchPoint = location;
        isTouching = true;
    }

}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
        touchPoint = location;
    
    if (touch.timestamp - kMaxDurtion > startTime) {
        isTouching = NO;
        startTime = touch.timestamp;
    }
    
    
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    isTouching = false;
}
#pragma mark - Contact methods
-(void)didBeginContact:(SKPhysicsContact *)contact{
    
    
    if (contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == milkCategory)
    {
        
        if (!gameOver)
        {
            gameOver = true;
            [self splashMilk];
            [self endGame];

        }
    
    }
    else if (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == milkCategory)
    {
         if (!gameOver)
        {
            gameOver = true;
            [self splashMilk];
            [self endGame];
        }
    }
    
    //Cookie Hits Star
    if (contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == starCategory)
    {
        
         SKNode *starBody = contact.bodyB.node;
        
        
        [starBody removeFromParent];
        
        
    }
    else if (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == starCategory)
    {
 
        SKNode *starBody = contact.bodyA.node;
        
        
        [starBody removeFromParent];
        
        
    }

 
}
#pragma mark - Game Methods
-(void)setLevelToInt:(int)x{
    currentLevel = x;
    if (x == 1) {
 
        
        [self createMilkAt:CGPointMake(self.frame.size.width/9, self.frame.size.height/6) withScale:.6 and:.5];
        
        
        
        
        JMWall *wall = [[JMWall alloc]initWithSize:CGSizeMake(80, 20) withStringNamed:@"woodLog"];
        wall.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/1.87);
        if (wall.parent == nil) {
            [self addChild:wall];

        }
        
        
        JMStar *star1;
        if (!star1) {
            star1 = [[JMStar alloc]initWithSize:CGSizeMake(30, 30) withStringNamed:@"star"];
        }
        star1.position = CGPointMake(self.frame.size.width/1.09, self.frame.size.height/1.2);
        star1.physicsBody.categoryBitMask = starCategory;
        star1.physicsBody.contactTestBitMask = cookieCategory;
        if (star1.parent == nil) {
            [self addChild:star1];
            
        }
        JMStar *star2 = [[JMStar alloc]initWithSize:CGSizeMake(30, 30) withStringNamed:@"star"];
        star2.position = CGPointMake(self.frame.size.width/9, self.frame.size.height/1.4);
        star2.physicsBody.categoryBitMask = starCategory;
        star2.physicsBody.contactTestBitMask = cookieCategory;
        if (star2.parent == nil) {
            [self addChild:star2];
            
        }
        JMStar *star3 = [[JMStar alloc]initWithSize:CGSizeMake(30, 30) withStringNamed:@"star"];
        star3.position = CGPointMake(self.frame.size.width/8.8, self.frame.size.height/3.3);
        star3.physicsBody.categoryBitMask = starCategory;
        star3.physicsBody.contactTestBitMask = cookieCategory;
        if (star3.parent == nil) {
            [self addChild:star3];
            
        }
        cookieStartPoint = CGPointMake(self.frame.size.width/2, self.frame.size.height);
        if (cookieSprite.parent == nil) {
            [self addChild:cookieSprite];
            
        }
    


    }
    
    
    
}
-(void)endGame{
}
-(void)splashMilk{
    
    SKEmitterNode *milkSplashNodeLeft = [NSKeyedUnarchiver
                                unarchiveObjectWithFile:[[NSBundle mainBundle]
                                                         pathForResource:@"MilkSpashAnimation_Left" ofType:@"sks"]];
    milkSplashNodeLeft.position = cookieSprite.position;
    
    
    SKEmitterNode *milkSplashNodeRight = [NSKeyedUnarchiver
                                     unarchiveObjectWithFile:[[NSBundle mainBundle]
                                                              pathForResource:@"MilkSpashAnimation_Right" ofType:@"sks"]];
    milkSplashNodeRight.position = cookieSprite.position;
    milkSplashNodeRight.particleRotation = -180;
    milkSplashNodeRight.particleRotationSpeed = -10;
    
    milkSplashNodeLeft.particleRotationRange = cookieSprite.frame.size.width;
    milkSplashNodeRight.particleRotationRange = cookieSprite.frame.size.width;

    int x = arc4random_uniform(2);
    
    if (x == 0) {
        
        milkSplashNodeLeft.numParticlesToEmit = 1;
        milkSplashNodeRight.numParticlesToEmit = 2;
        
    }else if (x == 1)
    {
        milkSplashNodeLeft.numParticlesToEmit = 2;
        milkSplashNodeRight.numParticlesToEmit = 1;

    }
    
    [self addChild:milkSplashNodeLeft];

    [self addChild:milkSplashNodeRight];

}
-(void)createMilkAt:(CGPoint)location withScale:(CGFloat)x and: (CGFloat)y{
    //Generates the cup of milk
    
 
    milkNode = [SKSpriteNode spriteNodeWithImageNamed:@"milkGlass"];
    CGRect milkRect = CGRectMake(milkNode.frame.origin.x,milkNode.frame.origin.y , milkNode.frame.size.width, milkNode.frame.size.height/1.5);
    milkNode.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromPath:CGPathCreateWithRoundedRect(milkRect, 4, 4, NULL)];
    milkNode.xScale = x;
    milkNode.yScale = y;
    milkNode.physicsBody.affectedByGravity = NO;
    milkNode.position = CGPointMake(location.x, location.y);
    milkNode.physicsBody.dynamic = YES;
    [self addChild:milkNode];
    
    //Generates the top of milk
    milkTopNode = [SKSpriteNode spriteNodeWithImageNamed:@"milkGlassTop"];
    milkTopNode.position = CGPointMake(location.x, location.y);
    milkTopNode.xScale = x;
    milkTopNode.yScale = y;
    milkTopNode.zPosition = -1;
    [self addChild:milkTopNode];
    
    
    //Top Left Wall
    topLeft = [SKSpriteNode spriteNodeWithColor:[UIColor clearColor] size:CGSizeMake(2, milkNode.frame.size.height - milkNode.size.height/1.5 )];
    CGRect topLeftRect = CGRectMake(topLeft.frame.origin.x, topLeft.frame.origin.y, topLeft.frame.size.width, topLeft.frame.size.height);
    topLeft.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromPath:CGPathCreateWithRoundedRect(topLeftRect, 1, 1, NULL)];
    [topLeft setPosition:(CGPointMake(milkNode.position.x - milkNode.size.width/2,milkNode.position.y + milkNode.size.height/2 - topLeft.size.height/2))];
    topLeft.physicsBody.affectedByGravity = NO;
    topLeft.physicsBody.dynamic = NO;
    [self addChild:topLeft];
    
    //Top Right Wall
    topRight = [SKSpriteNode spriteNodeWithColor:[UIColor clearColor] size:CGSizeMake(2, milkNode.frame.size.height - milkNode.size.height/1.5)];
    CGRect topRightRect = CGRectMake(topRight.frame.origin.x, topRight.frame.origin.y, topRight.frame.size.width, topRight.frame.size.height);
    topRight.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromPath:CGPathCreateWithRoundedRect(topRightRect, 1, 1, NULL)];    [topRight setPosition:(CGPointMake(milkNode.position.x + milkNode.size.width/2,milkNode.position.y + milkNode.size.height/2 - topLeft.size.height/2))];
    topRight.physicsBody.affectedByGravity = NO;
    topRight.physicsBody.dynamic = NO;
    [self addChild:topRight];
    
    
    //Generates object to concider cookie in milk
    cupLine = [SKSpriteNode spriteNodeWithColor:[UIColor clearColor] size:CGSizeMake(milkNode.frame.size.width - 4,2 )];
    [cupLine setPhysicsBody:[SKPhysicsBody bodyWithRectangleOfSize:cupLine.size]];
    [cupLine setPosition:(CGPointMake(milkNode.frame.origin.x +milkNode.frame.size.width/2,milkNode.frame.origin.y + (milkNode.frame.size.height/1.5)))];
    cupLine.physicsBody.affectedByGravity = NO;
    cupLine.physicsBody.dynamic = NO;
    cupLine.physicsBody.categoryBitMask = milkCategory;
    cupLine.physicsBody.contactTestBitMask = cookieCategory;
    cupLine.physicsBody.collisionBitMask = cookieCategory;
    [self addChild:cupLine];
}
-(BOOL)cookieOnGround{
    
//    if (!sprite.physicsBody.velocity.dy > 0 || !sprite.physicsBody.velocity.dy > -0) {
//            return true;
//
//    
//    }
    if (!gameOver)
    {
        
    
        if (cookieSprite.physicsBody.velocity.dy == 0.000000 || cookieSprite.physicsBody.velocity.dy == -0.000000)
        {

            return true;
        
        
        }else{
        
            return false;

        }
    }
    
    return false;
}
#pragma mark - Helper Methods
- (SKTextureAtlas *)textureAtlasNamed:(NSString *)fileName{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        
        if (IS_WIDESCREEN) {
            // iPhone Retina 4-inch
            fileName = [NSString stringWithFormat:@"%@-568", fileName];
        } else {
            // iPhone Retina 3.5-inch
            fileName = fileName;
        }
        
    } else {
        fileName = [NSString stringWithFormat:@"%@-ipad", fileName];
    }
    
    SKTextureAtlas *textureAtlas = [SKTextureAtlas atlasNamed:fileName];
    
    return textureAtlas;
}


@end

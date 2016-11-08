//
//  JMBasicLevel.m
//  cookie
//
//  Created by Jeremy Mackey on 12/25/15.
//  Copyright © 2015 Jeremy Mackey. All rights reserved.
//
#import "JMLevelSelect.h"
#import "JMBasicLevel.h"

@implementation JMBasicLevel

#pragma mark - World Methods
-(void)didMoveToView:(SKView *)view {
    
    [super didMoveToView:view];
    
    //****Removes gestures from scrollView****//
    for (UIGestureRecognizer *gr in self.view.gestureRecognizers) {
        [self.view removeGestureRecognizer:gr];
    }

    
    //**** Sets up scene ***
    [self.scene.physicsWorld setGravity:CGVectorMake(0, -9.8)];  //Gravity of the world
    self.scene.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];  //Physics body of Scene
    self.physicsBody.restitution = 0.5;  //Makes bouncy walls
    self.physicsWorld.contactDelegate = self; //Alows for collision detection
    gameOver = false;
    canGetStars = false;
    
    
    //**** End Scene Set up
    
    spriteAtlas = [self textureAtlasNamed:@"sprites"];

    
    
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
    SKNode *node = [self nodeAtPoint:location];

    if ([cookieSprite containsPoint:location] && [self cookieOnGround]) {
        touchPoint = location;
        isTouching = true;
    }else if ([node.name isEqualToString:@"nextLevelButton"]){
        
        
            [self nextLevelButtonPress];
        
        
    }else if ([node.name isEqualToString:@"menuButton"])
    {
        
        [self menuButtonPress];
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
    
    if ((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == milkCategory)||(contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == milkCategory))
    {
        
        if (!gameOver)
        {
            gameOver = true;
            [self splashMilk];
            [self performSelector:@selector(endGame) withObject:nil afterDelay:1];
            
            
        }
        
    }
   
    
    //Cookie Hits Star
    if (((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == starCategory) || (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == starCategory)) && canGetStars == true)
    {
        SKNode *starBody;
        if (contact.bodyA.categoryBitMask == starCategory) {
            starBody = contact.bodyA.node;

        }else{
            starBody = contact.bodyB.node;
        }
        
        
        [starBody removeFromParent];
        
        
    }
    

    //Cookie Hits Wall

    if ((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == wallCategory) || (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == wallCategory)){

        canGetStars = true;
    }
    
    //Cookie Hits Floor
    
    if ((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == floorCategory) || (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == floorCategory)){
        
        [self restart];
    }

    
    
    
}
#pragma mark - Game Methods

-(void)addStars{
    
}
-(void)addWalls{
    
}

-(void)setUpLevel{
    
}

-(void)restart{


    
}
-(void)endGame{

    NSLog(@"endGAME");
    //Sets menu Background
    SKSpriteNode* menuBackground = [SKSpriteNode spriteNodeWithColor:[UIColor grayColor] size:self.scene.size];
    menuBackground.size = self.frame.size;
    menuBackground.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    menuBackground.zPosition = 5;
    menuBackground.alpha = 0.75;
    [self addChild:menuBackground];
    
    //Sets next level Button
    SKSpriteNode* nextButton = [SKSpriteNode spriteNodeWithColor:[UIColor yellowColor] size:CGSizeMake(self.scene.size.width/3, self.scene.size.width/8)];
    nextButton.position = CGPointMake(CGRectGetMidX(self.frame)/2, CGRectGetMidY(self.frame));
    nextButton.zPosition = 6;
    nextButton.name = @"nextLevelButton";
    [self addChild:nextButton];
    
    //Sets Menu Button
    SKSpriteNode* menuButton = [SKSpriteNode spriteNodeWithColor:[UIColor blueColor] size:CGSizeMake(self.scene.size.width/3, self.scene.size.width/8)];
    menuButton.position = CGPointMake(CGRectGetMidX(self.frame) + CGRectGetMidX(self.frame)/2, CGRectGetMidY(self.frame));
    menuButton.zPosition = 6;
    menuButton.name = @"menuButton";
    [self addChild:menuButton];




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
    milkNode.zPosition = 1;
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

-(void)nextLevelButtonPress{
    
}
-(void)menuButtonPress{
    
    JMLevelSelect *scene = [[JMLevelSelect alloc]initWithSize:self.size];
    [self.view presentScene:scene];
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

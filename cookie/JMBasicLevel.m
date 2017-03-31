//
//  JMBasicLevel.m
//  cookie
//
//  Created by Jeremy Mackey on 12/25/15.
//  Copyright © 2015 Jeremy Mackey. All rights reserved.
//
#import "JMLevelSelect.h"
#import "JMBasicLevel.h"

@implementation JMBasicLevel{
    
  //  SKSpriteNode *cookieSprite;
}

#pragma mark - World Methods
-(void)didMoveToView:(SKView *)view {
    
    [super didMoveToView:view];
    
    starCollectArray = [[NSMutableArray alloc]initWithArray:@[@0,@0,@0]];
    
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

    //Sets Backgound
    SKSpriteNode* background = [SKSpriteNode spriteNodeWithTexture:[spriteAtlas textureNamed:@"bg"]];
    background.size = self.frame.size;
    background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    background.zPosition = -5;
    [self addChild:background];

    //if theres no stars already saved it wont set the new array to null
    @try {
        [starCollectArray replaceObjectAtIndex:0 withObject:[[[NSUserDefaults standardUserDefaults]objectForKey:[NSString stringWithFormat:@"level%d",self.currentLevel]]objectAtIndex:0]];
        [starCollectArray replaceObjectAtIndex:1 withObject:[[[NSUserDefaults standardUserDefaults]objectForKey:[NSString stringWithFormat:@"level%d",self.currentLevel]]objectAtIndex:1]];
        [starCollectArray replaceObjectAtIndex:2 withObject:[[[NSUserDefaults standardUserDefaults]objectForKey:[NSString stringWithFormat:@"level%d",self.currentLevel]]objectAtIndex:2]];
    } @catch (NSException *exception) {
        
    } @finally {
        
    }

 
}
-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    if (isTouching) {
        CGFloat dt = 4.5/60.0;
        CGVector distance = CGVectorMake(touchPoint.x - cookieSprite.position.x, touchPoint.y-cookieSprite.position.y);
        CGVector velocity = CGVectorMake(distance.dx/dt, distance.dy/dt);
        [cookieSprite.physicsBody setVelocity:velocity];
        
    }
}

#pragma mark - Touch Events
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    
    UITouch *touch = [touches anyObject];
    startTime = touch.timestamp;

    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];

    CGRect cookieTouchRect = CGRectMake(cookieSprite.frame.origin.x, cookieSprite.frame.origin.y, cookieSprite.frame.size.width * 2.0 , cookieSprite.frame.size.height * 2.0);
    
    if ([node.name isEqualToString:@"retryButton"]) {
        [self restart];
    }
    
    if ( CGRectContainsPoint(cookieTouchRect, location) && [self cookieOnGround]) {
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
   
    
    //Cookie Hits Star 1
    if (((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == starCategory1) || (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == starCategory1)) && canGetStars == true)
    {
        SKNode *starBody;
        if (contact.bodyA.categoryBitMask == starCategory1) {
            starBody = contact.bodyA.node;

        }else{
            starBody = contact.bodyB.node;
        }
        
        SKAction *scale = [SKAction scaleTo:2 duration:0.2];
        SKAction *fadeOut = [SKAction fadeOutWithDuration:0.2];
        SKAction *group = [SKAction group:@[scale, fadeOut]];

        [starBody runAction:group completion:^{
            [starCollectArray replaceObjectAtIndex:0 withObject:@1];
            [starBody removeFromParent];
            
        }];
        
        
    }
    //Cookie Hits Star 2
    if (((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == starCategory2) || (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == starCategory2)) && canGetStars == true)
    {
        SKNode *starBody;
        if (contact.bodyA.categoryBitMask == starCategory2) {
            starBody = contact.bodyA.node;
            
        }else{
            starBody = contact.bodyB.node;
        }
        
        SKAction *scale = [SKAction scaleTo:2 duration:0.2];
        SKAction *fadeOut = [SKAction fadeOutWithDuration:0.2];
        SKAction *group = [SKAction group:@[scale, fadeOut]];
        
        [starBody runAction:group completion:^{
            [starCollectArray replaceObjectAtIndex:1 withObject:@1];

            [starBody removeFromParent];
            
        }];
        
        
    }
    //Cookie Hits Star 3
    if (((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == starCategory3) || (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == starCategory3)) && canGetStars == true)
    {
        SKNode *starBody;
        if (contact.bodyA.categoryBitMask == starCategory3) {
            starBody = contact.bodyA.node;
            
        }else{
            starBody = contact.bodyB.node;
        }
        
        SKAction *scale = [SKAction scaleTo:2 duration:0.2];
        SKAction *fadeOut = [SKAction fadeOutWithDuration:0.2];
        SKAction *group = [SKAction group:@[scale, fadeOut]];
        
        [starBody runAction:group completion:^{
            [starCollectArray replaceObjectAtIndex:2 withObject:@1];

            [starBody removeFromParent];
            
        }];
        
        
    }
    

    //Cookie Hits Wall

    if ((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == wallCategory) || (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == wallCategory)){

        if (canGetStars == false) {
            
            canGetStars = true;

        }
    }
    
    //Cookie hits break wall
    if ((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == breakWallCategory) || (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == breakWallCategory)){
        
        
        
        SKNode *wallBody;
        if (contact.bodyA.categoryBitMask == breakWallCategory) {
           wallBody = contact.bodyA.node;
            
        }else{
            wallBody = contact.bodyB.node;
        }
        
        [(JMBreakWall*)wallBody breakSelf];
        
        
        
    }
    
    //Cookie Hits Floor
    
    if ((contact.bodyA.categoryBitMask == cookieCategory && contact.bodyB.categoryBitMask == floorCategory) || (contact.bodyB.categoryBitMask == cookieCategory && contact.bodyA.categoryBitMask == floorCategory)){
        
        [self restart];
    }

    
    
    
}
#pragma mark - Adding Methods

-(void)createCookie:(CGPoint)cookieLocation{
    //**** Cookie sprite *****
    cookieSprite = [[SKSpriteNode alloc]initWithTexture:[spriteAtlas textureNamed:@"cookiePlayer.png"]];
    
    [cookieSprite setSize:CGSizeMake(cookieSprite.frame.size.width*(1-.120000), cookieSprite.frame.size.height*(1-.120000))];
    cookieSprite.position = cookieLocation;
    cookieSprite.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:cookieSprite.frame.size.width/2];
    cookieSprite.physicsBody.affectedByGravity = YES;
    cookieSprite.xScale = 0.17;
    cookieSprite.yScale = 0.17;
    cookieSprite.physicsBody.categoryBitMask = cookieCategory;
    cookieSprite.physicsBody.contactTestBitMask = milkCategory | wallCategory | bounceWallCategory;
    cookieSprite.physicsBody.collisionBitMask = milkCategory | wallCategory | bounceWallCategory | breakWallCategory;
    cookieSprite.zPosition = 0;
    cookieSprite.physicsBody.dynamic = YES;
    
    if (cookieSprite.parent == nil) {
        [self addChild:cookieSprite];
        
    }
    //***** End cookie sprite *****
    
}

#pragma mark - Walls

-(void)addWalls:(NSArray*)positionArray{
    
    // positionArray[0] = X : positionArray[1] = Y
    for (int x = 0; x<(int)positionArray.count; x+=3) {
        
        JMWall *wall = [[JMWall alloc]initWithSize:CGSizeMake(80, 20) withStringNamed:@"woodLog"];
        float rotation = [positionArray[x+2] floatValue];
        wall.zRotation = rotation;
        wall.position = CGPointMake([positionArray[x] floatValue], [positionArray[x+1] floatValue]);
        [self addChild:wall];
            
        
        
        
    }
    
}
-(void)addBounceWalls:(NSArray*)positionArray{
    
    // positionArray[0] = X : positionArray[1] = Y
    for (int x = 0; x<(int)positionArray.count; x+=3) {
        
        JMBounceWall *wall = [[JMBounceWall alloc]initWithSize:CGSizeMake(80, 20) withStringNamed:@"BounceLog"];
        float rotation = [positionArray[x+2] floatValue];
        wall.zRotation = rotation;
        wall.position = CGPointMake([positionArray[x] floatValue], [positionArray[x+1] floatValue]);
        [self addChild:wall];
        
        
        
        
    }
    
}

-(void)addBreakWalls:(NSArray*)positionArray{
    
    // positionArray[0] = X : positionArray[1] = Y
    for (int x = 0; x<(int)positionArray.count; x+=3) {
        
        JMBreakWall *wall = [[JMBreakWall alloc]initWithSize:CGSizeMake(80, 20) withStringNamed:@"BounceLog"];
        float rotation = [positionArray[x+2] floatValue];
        wall.zRotation = rotation;
        wall.position = CGPointMake([positionArray[x] floatValue], [positionArray[x+1] floatValue]);
        [self addChild:wall];
        
        
        
        
    }
    
}

#pragma mark - Extra items to be done


-(void)addStars:(NSArray*)positionArray{
    
    if (canGetStars == false) {
        
        // positionArray[0] = X : positionArray[1] = Y
        for (int x = 0; x<(int)positionArray.count; x+=2) {
            JMStar *star = [[JMStar alloc]initWithSize:CGSizeMake(30, 30) withStringNamed:@"star"];
            star.position = CGPointMake([positionArray[x] floatValue], [positionArray[x+1] floatValue]);
            
            if (x/2 == 0) {
                
                star.physicsBody.categoryBitMask = starCategory1;

            }else if (x/2 == 1){
                star.physicsBody.categoryBitMask = starCategory2;

                
            }else if (x/2 == 2){
                star.physicsBody.categoryBitMask = starCategory3;

                
            }
            star.physicsBody.contactTestBitMask = cookieCategory;
            [self addChild:star];
            
            
            
            
            
            
        }
        
        
        //        JMStar *star2 = [[JMStar alloc]initWithSize:CGSizeMake(30, 30) withStringNamed:@"star"];
        //    star2.position = CGPointMake(self.frame.size.width/9, self.frame.size.height/1.4);
        //    star2.physicsBody.categoryBitMask = starCategory;
        //    star2.physicsBody.contactTestBitMask = cookieCategory;
        //    if (star2.parent == nil) {
        //        [self addChild:star2];
        //
        //    }
        //    JMStar *star3 = [[JMStar alloc]initWithSize:CGSizeMake(30, 30) withStringNamed:@"star"];
        //    star3.position = CGPointMake(self.frame.size.width/8.8, self.frame.size.height/3.3);
        //    star3.physicsBody.categoryBitMask = starCategory;
        //    star3.physicsBody.contactTestBitMask = cookieCategory;
        //    if (star3.parent == nil) {
        //        [self addChild:star3];
        //        
        //    }
    }
    
}


-(void)addExtras{
    
    //**** Bottom sprite
    SKSpriteNode *bottomLayer = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(self.size.width, 10)];
    bottomLayer.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:bottomLayer.frame];
    bottomLayer.physicsBody.affectedByGravity = NO;
    bottomLayer.physicsBody.categoryBitMask = floorCategory;
    bottomLayer.physicsBody.contactTestBitMask = cookieCategory;
    bottomLayer.physicsBody.collisionBitMask = cookieCategory;
    [bottomLayer setPosition:CGPointMake(self.frame.size.width/2, self.frame.size.height/10)];
    [self addChild:bottomLayer];
    //**** End bottom sprite
    
    SKSpriteNode *retryButton = [SKSpriteNode spriteNodeWithColor:[UIColor greenColor] size:CGSizeMake(80, 30)];
    [retryButton setPosition:CGPointMake(self.frame.size.width/7, self.frame.size.height/20)];
    retryButton.name = @"retryButton";
    [self addChild:retryButton];
    
    
}

//-(void)addStars{
//    
//}
//-(void)addWalls{
//    
//}

-(void)setUpLevel{
    
}

-(void)restart{


       
}
#pragma mark - Game methods

-(void)endGame{

    //Sync up saved stars
    [[NSUserDefaults standardUserDefaults]setObject:starCollectArray forKey:[NSString stringWithFormat:@"level%d",self.currentLevel]];
    [[NSUserDefaults standardUserDefaults]synchronize];
    
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
    
    SKSpriteNode *retryButton = [SKSpriteNode spriteNodeWithColor:[UIColor greenColor] size:CGSizeMake(300, 70)];
    [retryButton setPosition:CGPointMake(self.frame.size.width/2, self.frame.size.height/3)];
    retryButton.zPosition = 6;
    retryButton.name = @"retryButton";
    [self addChild:retryButton];
    




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
    

    if (!gameOver)
    {
        
        
    {

        if (fabs(cookieSprite.physicsBody.velocity.dy)<= .0001)
        {
            return true;
            
            
        }else{

            return false;
            
        }
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

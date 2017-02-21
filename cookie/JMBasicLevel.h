//
//  JMBasicLevel.h
//  cookie
//
//  Created by Jeremy Mackey on 12/25/15.
//  Copyright © 2015 Jeremy Mackey. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#define kMaxDurtion       0.2



#import "JMWall.h"
#import "JMStar.h"
#import "JMBounceWall.h"
#import "JMBreakWall.h"
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )


static const uint32_t  cookieCategory = 0x1 <<0;  //cookie collison cattegory
static const uint32_t  milkCategory = 0x1 <<1;  //Milk collision category
static const uint32_t  starCategory1 = 0x1 <<2;  //Star collision category
static const uint32_t  starCategory2 = 0x1 <<6;  //Star collision category
static const uint32_t  starCategory3 = 0x1 <<7;  //Star collision category
static const uint32_t  wallCategory = 0x1 <<3;  //Wall collision category
static const uint32_t  floorCategory = 0x1 <<4;  //Floor collision category
static const uint32_t  bounceWallCategory = 0x1 <<5;  //Bounce Wall collision category
static const uint32_t  breakWallCategory = 0x1 <<8;  //Bounce Wall collision category






@interface JMBasicLevel : SKScene<SKPhysicsContactDelegate>{
    
    NSTimeInterval startTime;
    SKSpriteNode *cookieSprite;
    SKSpriteNode *tableNode;
    CGPoint touchPoint;
    SKSpriteNode *milkNode;
    SKSpriteNode *milkTopNode;
    SKTextureAtlas *spriteAtlas;
    SKSpriteNode *topLeft;
    SKSpriteNode *topRight;
    SKSpriteNode *cupLine;
    CGPoint cookieStartPoint;
    BOOL gameOver;
    BOOL canGetStars;
    BOOL isTouching;
    NSMutableArray *starCollectArray;

}


-(void)createMilkAt:(CGPoint)location withScale:(CGFloat)x and: (CGFloat)y;
-(void)splashMilk;
-(void)nextLevelButtonPress;
-(void)menuButtonPress;
-(void)endGame;
-(void)addStars;

-(void)addWalls:(NSArray*)positionArray;
-(void)addBounceWalls:(NSArray*)positionArray;
-(void)addBreakWalls:(NSArray*)positionArray;

-(void)setUpLevel;
-(void)restart;
-(void)createCookie:(CGPoint)cookieLocation;
-(void)addStars:(NSArray*)positionArray;
-(void)addExtras;
@property (nonatomic) int currentLevel;

- (SKTextureAtlas *)textureAtlasNamed:(NSString *)fileName;
@end

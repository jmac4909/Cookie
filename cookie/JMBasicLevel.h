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

#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )


static const uint32_t cookieCategory = 0x1 <<0;  //cookie collison cattegory
static const uint32_t  milkCategory = 0x1 <<1;  //Milk collision category
static const uint32_t  starCategory = 0x1 <<2;  //Star collision category


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
    int currentLevel;
    BOOL gameOver;
    
    BOOL isTouching;
}
-(void)createMilkAt:(CGPoint)location withScale:(CGFloat)x and: (CGFloat)y;
-(void)splashMilk;
-(void)nextLevelButtonPress;
-(void)menuButtonPress;
-(void)endGame;
- (SKTextureAtlas *)textureAtlasNamed:(NSString *)fileName;
@end
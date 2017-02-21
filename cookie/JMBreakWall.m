//
//  JMBreakWall.m
//  cookie
//
//  Created by Jeremy Mackey on 2/20/17.
//  Copyright © 2017 Jeremy Mackey. All rights reserved.
//

#import "JMBreakWall.h"

#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )

@implementation JMBreakWall



-(JMBreakWall*)initWithSize:(CGSize )size withStringNamed:(NSString*)textureName
{
    SKTextureAtlas *spriteAtlas = [self textureAtlasNamed:@"sprites"];
    SKTexture *wallTexture = [spriteAtlas textureNamed:textureName];
    
    self = [[JMBreakWall alloc]initWithTexture:wallTexture];
    [self setSize:size];
    self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromPath:CGPathCreateWithRoundedRect(self.frame, .01, .01, NULL)];
    self.physicsBody.affectedByGravity = NO;
    self.physicsBody.pinned = YES;
    self.physicsBody.categoryBitMask = breakWallCategory;
    self.physicsBody.contactTestBitMask = cookieCategory;
    self.physicsBody.collisionBitMask = cookieCategory;
    self.physicsBody.dynamic = YES;
    
    return self;
}


- (void)breakSelf
{
    SKAction *scale = [SKAction scaleTo:0 duration:0.2];
    SKAction *fadeOut = [SKAction fadeOutWithDuration:0.2];
    SKAction *group = [SKAction group:@[scale, fadeOut]];
    
    [self runAction:group completion:^{
        
        [self removeFromParent];
        
    }];

}

#pragma mark - Helper Methods

- (SKTextureAtlas *)textureAtlasNamed:(NSString *)fileName
{
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

//
//  JMWall.m
//  cookie
//
//  Created by Jeremy Mackey on 12/22/15.
//  Copyright © 2015 Jeremy Mackey. All rights reserved.
//

#import "JMWall.h"

#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )

@implementation JMWall

-(JMWall*)initWithSize:(CGSize )size withStringNamed:(NSString*)textureName
{
    SKTextureAtlas *spriteAtlas = [self textureAtlasNamed:@"sprites"];
    SKTexture *wallTexture = [spriteAtlas textureNamed:textureName];

    self = [[JMWall alloc]initWithTexture:wallTexture];
    [self setSize:size];
    self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromPath:CGPathCreateWithRoundedRect(self.frame, .01, .01, NULL)];
    self.physicsBody.affectedByGravity = NO;
    self.physicsBody.pinned = YES;
    self.physicsBody.categoryBitMask = wallCategory;
    self.physicsBody.contactTestBitMask = cookieCategory;
    self.physicsBody.collisionBitMask = cookieCategory;
    
    self.physicsBody.dynamic = YES;
    return self;
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

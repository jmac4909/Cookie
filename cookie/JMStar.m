//
//  JMStar.m
//  cookie
//
//  Created by Jeremy Mackey on 12/24/15.
//  Copyright © 2015 Jeremy Mackey. All rights reserved.
//

#import "JMStar.h"


#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )


@implementation JMStar

-(JMStar*)initWithSize:(CGSize )size withStringNamed:(NSString*)textureName
{
    SKTextureAtlas *spriteAtlas = [self textureAtlasNamed:@"sprites"];
    SKTexture *wallTexture = [spriteAtlas textureNamed:textureName];
    self = [[JMStar alloc]initWithTexture:wallTexture];
    [self setSize:size];

    self.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:self.frame.size.width/2];
    self.physicsBody.dynamic = NO;
    
    
    
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

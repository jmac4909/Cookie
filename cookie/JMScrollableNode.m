//
//  JMScrollableNode.m
//  cookie
//
//  Created by Jeremy Mackey on 3/6/16.
//  Copyright © 2016 Jeremy Mackey. All rights reserved.
//

#import "JMScrollableNode.h"


@interface JMScrollableNode ()
{
    CGPoint _unoffsetPosition;
    CGPoint _contentOffset;
    BOOL _locked;
}
@end

@implementation JMScrollableNode

-(void)setPosition:(CGPoint)position
{
    self->_unoffsetPosition = position;
    [self setPosition:self->_unoffsetPosition withOffset:self->_contentOffset];
}

-(void)setLocked:(bool)locked
{
    self->_locked = locked;
    if (locked) {
        self.alpha = 0.5;

    }else{
        self.alpha = 1;

    }
}

- (void)setNumberOfStars:(int)num forLevel:(NSString*)name{
    SKTextureAtlas *spriteAtlas = [self textureAtlasNamed:@"sprites"];

    if (num >=1) {

        SKSpriteNode *star3 = [SKSpriteNode spriteNodeWithTexture:[spriteAtlas textureNamed:@"Star"] size:CGSizeMake(self.frame.size.height/2, self.frame.size.height/2)];
        star3.position = CGPointMake(0, self.frame.size.height/1.5);
        [star3 setZPosition:2];
        star3.name = name;
        [self addChild:star3];
    }
    if (num >=2)
    {
        SKSpriteNode *star1 = [SKSpriteNode spriteNodeWithTexture:[spriteAtlas textureNamed:@"Star"] size:CGSizeMake(self.frame.size.height/2, self.frame.size.height/2)];
        star1.position = CGPointMake(self.frame.size.height, self.frame.size.height/1.5);
        [star1 setZPosition:2];
        star1.name = name;
        [self addChild:star1];
        

    }
    if (num >=3) {
        SKSpriteNode *star2 = [SKSpriteNode spriteNodeWithTexture:[spriteAtlas textureNamed:@"Star"] size:CGSizeMake(self.frame.size.height/2, self.frame.size.height/2)];
        star2.position = CGPointMake(self.frame.size.height/2, self.frame.size.height);
        [star2 setZPosition:2];
        star2.name = name;
        [self addChild:star2];
        

    }

    
}

-(CGPoint)position
{
    return self->_unoffsetPosition;
}

-(void)setContentOffset:(CGPoint)contentOffset
{
    self->_contentOffset = contentOffset;
    [self setPosition:self->_unoffsetPosition withOffset:self->_contentOffset];
}

-(CGPoint)contentOffset
{
    return self->_contentOffset;
}

-(void)setPosition:(CGPoint)position withOffset:(CGPoint)offset
{
    CGPoint x = CGPointMake(position.x - offset.x,
                            position.y - offset.y);
    [super setPosition:x];
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

//
//  JMScrollableNode.h
//  cookie
//
//  Created by Jeremy Mackey on 3/6/16.
//  Copyright © 2016 Jeremy Mackey. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface JMScrollableNode : SKSpriteNode
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )

@property (nonatomic) CGPoint contentOffset;

-(void)setLocked:(bool)locked;

- (SKTextureAtlas *)textureAtlasNamed:(NSString *)fileName;
- (void)setNumberOfStars:(int)num forLevel:(NSString*)name;

@end

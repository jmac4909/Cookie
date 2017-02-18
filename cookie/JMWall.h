//
//  JMWall.h
//  cookie
//
//  Created by Jeremy Mackey on 12/22/15.
//  Copyright © 2015 Jeremy Mackey. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

#import "JMBasicLevel.h"


@interface JMWall : SKSpriteNode



-(JMWall*)initWithSize:(CGSize )size withStringNamed:(NSString*)texture;

@end

//
//  JMBreakWall.h
//  cookie
//
//  Created by Jeremy Mackey on 2/20/17.
//  Copyright © 2017 Jeremy Mackey. All rights reserved.
//

#import "JMWall.h"

@interface JMBreakWall : SKSpriteNode
-(JMBreakWall*)initWithSize:(CGSize )size withStringNamed:(NSString*)textureName;
- (void)breakSelf;
@end

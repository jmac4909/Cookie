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

@end

//
//  JMLevelSelect.m
//  cookie
//
//  Created by Jeremy Mackey on 3/6/16.
//  Copyright © 2016 Jeremy Mackey. All rights reserved.
//

#import "JMLevelSelect.h"
#import "JMLevel01.h"
#import "JMLevel02.h"
#import "JMLevel03.h"
#import "JMLevel04.h"



@implementation JMLevelSelect
{
    JMScrollableNode *scrollBackGround1;
    JMScrollableNode *scrollBackGround2;

    JMScrollableNode *level1;
    JMScrollableNode *level2;
    JMScrollableNode *level3;
    JMScrollableNode *level4;
    UIScrollView *scrollViewMenu;
}

-(void)didMoveToView:(SKView *)view{
    
    [super didMoveToView:view];

    scrollBackGround1 = [[JMScrollableNode alloc]initWithImageNamed:@"levelSelectBackground1"];
    [scrollBackGround1 setSize:CGSizeMake(self.scene.size.width*1, self.scene.size.height*2.568216)];
    scrollBackGround1.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height);
    scrollBackGround1.userInteractionEnabled = NO;
    scrollBackGround1.zPosition = 0;
    [self addChild:scrollBackGround1];
    
    scrollBackGround2 = [[JMScrollableNode alloc]initWithImageNamed:@"levelSelectBackground2"];
    [scrollBackGround2 setSize:CGSizeMake(self.scene.size.width*1, self.scene.size.height*2.568216)];
    scrollBackGround2.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height+scrollBackGround1.frame.size.height-2);
    scrollBackGround2.userInteractionEnabled = NO;
    scrollBackGround2.zPosition = 0;
    [self addChild:scrollBackGround2];
    
    CGAffineTransform verticalFlip = CGAffineTransformMakeScale(1,-1);
     scrollViewMenu = [[UIScrollView alloc]initWithFrame:self.frame];
    scrollViewMenu.contentSize = CGSizeMake(self.frame.size.width, scrollBackGround1.frame.size.height+scrollBackGround2.frame.size.height);
    scrollViewMenu.backgroundColor = [UIColor redColor];
    scrollViewMenu.transform = verticalFlip;
    scrollViewMenu.hidden = true;
    [self.view addSubview:scrollViewMenu];
    [self.view addGestureRecognizer:scrollViewMenu.panGestureRecognizer];
    scrollViewMenu.delegate = self;
    [self.view sendSubviewToBack:scrollViewMenu];


    
    level1 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level1 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level1.anchorPoint = CGPointZero;
    level1.position = CGPointMake(level1.size.width*2.07, 5);
    level1.userInteractionEnabled = NO;
    level1.name = @"level1";
    level1.zPosition = 1;
    [self addChild:level1];

    level2 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level2 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level2.anchorPoint = CGPointZero;
    level2.position = CGPointMake(level2.size.width*1.75, level2.size.height * 1.5 );
    level2.userInteractionEnabled = NO;
    level2.name = @"level2";
    level2.zPosition = 1;
    [self addChild:level2];
    
    level3 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level3 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level3.anchorPoint = CGPointZero;
    level3.position = CGPointMake(level3.size.width*1.6, level3.size.height * 3 );
    level3.userInteractionEnabled = NO;
    level3.name = @"level3";
    level3.zPosition = 1;
    [self addChild:level3];
    
    level4 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level4 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level4.anchorPoint = CGPointZero;
    level4.position = CGPointMake(level4.size.width*1.95, level4.size.height * 4.5 );
    level4.userInteractionEnabled = NO;
    level4.name = @"level4";
    level4.zPosition = 1;
    [self addChild:level4];


}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{

    scrollBackGround1.contentOffset = scrollView.contentOffset;
    scrollBackGround2.contentOffset = scrollView.contentOffset;

    level1.contentOffset = scrollView.contentOffset;
    level2.contentOffset = scrollView.contentOffset;
    level3.contentOffset = scrollView.contentOffset;
    level4.contentOffset = scrollView.contentOffset;

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    if([node.name isEqualToString:@"level1"])
    {

        JMLevel01 *JMlevel1 = [[JMLevel01 alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];

        // Present the scene.
        [self.view presentScene:JMlevel1];

    }else if ([node.name isEqualToString:@"level2"])
    {
        JMLevel02 *JMlevel2 = [[JMLevel02 alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
        
        // Present the scene.
        [self.view presentScene:JMlevel2];
        
    }else if ([node.name isEqualToString:@"level3"])
    {
        JMLevel03 *JMlevel3 = [[JMLevel03 alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
        
        // Present the scene.
        [self.view presentScene:JMlevel3];
        
    }else if ([node.name isEqualToString:@"level4"])
    {
        JMLevel04 *JMlevel4 = [[JMLevel04 alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
        
        // Present the scene.
        [self.view presentScene:JMlevel4];
        
    }
}

- (void)willMoveFromView:(SKView *)view{
    
    [super willMoveFromView:view];
    
 
    scrollViewMenu = nil;
    

}

@end

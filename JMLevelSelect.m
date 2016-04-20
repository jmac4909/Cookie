//
//  JMLevelSelect.m
//  cookie
//
//  Created by Jeremy Mackey on 3/6/16.
//  Copyright © 2016 Jeremy Mackey. All rights reserved.
//

#import "JMLevelSelect.h"
#import "JMLevel01.h"
@implementation JMLevelSelect
{
    JMScrollableNode *scrollBackGround1;
    JMScrollableNode *scrollBackGround2;

    JMScrollableNode *test1;
    JMScrollableNode *test2;
    JMScrollableNode *test3;
    JMScrollableNode *test4;
    UIScrollView *scrollViewMenu;
}

-(void)didMoveToView:(SKView *)view{
    
    [super didMoveToView:view];

    scrollBackGround1 = [[JMScrollableNode alloc]initWithImageNamed:@"levelSelectBackground1"];
    //    scrollBackGround.anchorPoint = CGPointMake(0,0);
    scrollBackGround1.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height);
    scrollBackGround1.userInteractionEnabled = NO;
    scrollBackGround1.zPosition = 0;
    [self addChild:scrollBackGround1];
    
    scrollBackGround2 = [[JMScrollableNode alloc]initWithImageNamed:@"levelSelectBackground2"];
    //    scrollBackGround.anchorPoint = CGPointMake(0,0);
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
    NSLog(@" Move Count: %lu",self.view.gestureRecognizers.count);


    
    test1 = [[JMScrollableNode alloc]initWithColor:[UIColor yellowColor] size:CGSizeMake(50, 50)];
//    test1.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/1.5);
    test1.position = CGPointMake(0,0);

    test1.userInteractionEnabled = NO;
    test1.name = @"thisIsMySprite1";
    [self addChild:test1];
    test1.zPosition = 1;

    test2 = [[JMScrollableNode alloc]initWithColor:[UIColor blueColor] size:CGSizeMake(50, 50)];
    test2.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/4);
    test2.userInteractionEnabled = NO;
    test2.name = @"thisIsMySprite2";
    [self addChild:test2];
    test2.zPosition = 1;

    
    test3 = [[JMScrollableNode alloc]initWithColor:[UIColor greenColor] size:CGSizeMake(50, 50)];
    test3.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/3);
    test3.userInteractionEnabled = NO;
    test3.name = @"thisIsMySprite3";
    [self addChild:test3];
    test3.zPosition = 1;

    
    test4 = [[JMScrollableNode alloc]initWithColor:[UIColor redColor] size:CGSizeMake(50, 50)];
    test4.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    test4.userInteractionEnabled = NO;
    test4.name = @"thisIsMySprite4";
    [self addChild:test4];
    test4.zPosition = 1;

}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{

    scrollBackGround1.contentOffset = scrollView.contentOffset;
    scrollBackGround2.contentOffset = scrollView.contentOffset;

    test1.contentOffset = scrollView.contentOffset;
    test2.contentOffset = scrollView.contentOffset;
    test3.contentOffset = scrollView.contentOffset;
    test4.contentOffset = scrollView.contentOffset;

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    if([node.name isEqualToString:@"thisIsMySprite1"])
    {

        JMLevel01 *level = [[JMLevel01 alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
    
        
        // Present the scene.
        [self.view presentScene:level];

        
    }
    if ([node.name isEqualToString:@"thisIsMySprite1"] || [node.name isEqualToString:@"thisIsMySprite2"] || [node.name isEqualToString:@"thisIsMySprite3"] || [node.name isEqualToString:@"thisIsMySprite4"]) {
        [node runAction:[SKAction fadeOutWithDuration:0]];
    }
}

- (void)willMoveFromView:(SKView *)view{
    
    [super willMoveFromView:view];
    
 
    scrollViewMenu = nil;
    

}

@end

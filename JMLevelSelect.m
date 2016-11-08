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
#import "JMLevel05.h"
#import "JMLevel06.h"
#import "JMLevel07.h"
#import "JMLevel08.h"



@implementation JMLevelSelect
{
    JMScrollableNode *scrollBackGround1;
    JMScrollableNode *scrollBackGround2;

    JMScrollableNode *level1;
    JMScrollableNode *level2;
    JMScrollableNode *level3;
    JMScrollableNode *level4;
    JMScrollableNode *level5;
    JMScrollableNode *level6;
    JMScrollableNode *level7;
    JMScrollableNode *level8;
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
    
    level5 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level5 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level5.anchorPoint = CGPointZero;
    level5.position = CGPointMake(level5.size.width*2.6, level5.size.height * 6 );
    level5.userInteractionEnabled = NO;
    level5.name = @"level5";
    level5.zPosition = 1;
    [self addChild:level5];
    
    level6 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level6 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level6.anchorPoint = CGPointZero;
    level6.position = CGPointMake(level6.size.width*3.2, level6.size.height * 7.5 );
    level6.userInteractionEnabled = NO;
    level6.name = @"level6";
    level6.zPosition = 1;
    [self addChild:level6];
    
    level7 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level7 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level7.anchorPoint = CGPointZero;
    level7.position = CGPointMake(level7.size.width*3.45, level7.size.height * 9 );
    level7.userInteractionEnabled = NO;
    level7.name = @"level7";
    level7.zPosition = 1;
    [self addChild:level7];
    
    level8 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level8 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level8.anchorPoint = CGPointZero;
    level8.position = CGPointMake(level8.size.width*3.37, level8.size.height * 10.5 );
    level8.userInteractionEnabled = NO;
    level8.name = @"level8";
    level8.zPosition = 1;
    [self addChild:level8];






}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{

    scrollBackGround1.contentOffset = scrollView.contentOffset;
    scrollBackGround2.contentOffset = scrollView.contentOffset;

    level1.contentOffset = scrollView.contentOffset;
    level2.contentOffset = scrollView.contentOffset;
    level3.contentOffset = scrollView.contentOffset;
    level4.contentOffset = scrollView.contentOffset;
    level5.contentOffset = scrollView.contentOffset;
    level6.contentOffset = scrollView.contentOffset;
    level7.contentOffset = scrollView.contentOffset;
    level8.contentOffset = scrollView.contentOffset;

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
        
    }else if ([node.name isEqualToString:@"level5"])
    {
        JMLevel05 *JMlevel5 = [[JMLevel05 alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
        
        // Present the scene.
        [self.view presentScene:JMlevel5];
        
    }else if ([node.name isEqualToString:@"level6"])
    {
        JMLevel06 *JMlevel6 = [[JMLevel06 alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
        
        // Present the scene.
        [self.view presentScene:JMlevel6];
        
    }else if ([node.name isEqualToString:@"level7"])
    {
        JMLevel07 *JMlevel7 = [[JMLevel07 alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
        
        // Present the scene.
        [self.view presentScene:JMlevel7];
        
    }
    else if ([node.name isEqualToString:@"level8"])
    {
        JMLevel08 *JMlevel8 = [[JMLevel08 alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
        
        // Present the scene.
        [self.view presentScene:JMlevel8];
        
    }


}

- (void)willMoveFromView:(SKView *)view{
    
    [super willMoveFromView:view];
    
 
    scrollViewMenu = nil;
    

}

@end

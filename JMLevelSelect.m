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
    JMScrollableNode *level9;
    JMScrollableNode *level10;
    JMScrollableNode *level11;
    JMScrollableNode *level12;
    JMScrollableNode *level13;
    JMScrollableNode *level14;
    JMScrollableNode *level15;
    JMScrollableNode *level16;
    JMScrollableNode *level17;
    JMScrollableNode *level18;
    JMScrollableNode *level19;
    JMScrollableNode *level20;
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
    [self addLabelToButton:level1 withText:@"1"];

    level2 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level2 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level2.anchorPoint = CGPointZero;
    level2.position = CGPointMake(level2.size.width*1.75, level2.size.height * 1.5 );
    level2.userInteractionEnabled = NO;
    level2.name = @"level2";
    level2.zPosition = 1;
    [self addChild:level2];
    [self addLabelToButton:level2 withText:@"2"];
    
    level3 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level3 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level3.anchorPoint = CGPointZero;
    level3.position = CGPointMake(level3.size.width*1.6, level3.size.height * 3 );
    level3.userInteractionEnabled = NO;
    level3.name = @"level3";
    level3.zPosition = 1;
    [self addChild:level3];
    [self addLabelToButton:level3 withText:@"3"];

    
    level4 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level4 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level4.anchorPoint = CGPointZero;
    level4.position = CGPointMake(level4.size.width*1.95, level4.size.height * 4.5 );
    level4.userInteractionEnabled = NO;
    level4.name = @"level4";
    level4.zPosition = 1;
    [self addChild:level4];
    [self addLabelToButton:level4 withText:@"4"];

    
    level5 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level5 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level5.anchorPoint = CGPointZero;
    level5.position = CGPointMake(level5.size.width*2.6, level5.size.height * 6 );
    level5.userInteractionEnabled = NO;
    level5.name = @"level5";
    level5.zPosition = 1;
    [self addChild:level5];
    [self addLabelToButton:level5 withText:@"5"];

    
    level6 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level6 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level6.anchorPoint = CGPointZero;
    level6.position = CGPointMake(level6.size.width*3.2, level6.size.height * 7.5 );
    level6.userInteractionEnabled = NO;
    level6.name = @"level6";
    level6.zPosition = 1;
    [self addChild:level6];
    [self addLabelToButton:level6 withText:@"6"];

    
    level7 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level7 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level7.anchorPoint = CGPointZero;
    level7.position = CGPointMake(level7.size.width*3.45, level7.size.height * 9 );
    level7.userInteractionEnabled = NO;
    level7.name = @"level7";
    level7.zPosition = 1;
    [self addChild:level7];
    [self addLabelToButton:level7 withText:@"7"];

    
    level8 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level8 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level8.anchorPoint = CGPointZero;
    level8.position = CGPointMake(level8.size.width*3.37, level8.size.height * 10.5 );
    level8.userInteractionEnabled = NO;
    level8.name = @"level8";
    level8.zPosition = 1;
    [self addChild:level8];
    [self addLabelToButton:level8 withText:@"8"];

    
    level9 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level9 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level9.anchorPoint = CGPointZero;
    level9.position = CGPointMake(level9.size.width*3, level9.size.height * 12 );
    level9.userInteractionEnabled = NO;
    level9.name = @"level9";
    level9.zPosition = 1;
    [self addChild:level9];
    [self addLabelToButton:level9 withText:@"9"];
    
    level10 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level10 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level10.anchorPoint = CGPointZero;
    level10.position = CGPointMake(level10.size.width*2.55, level10.size.height * 13.5 );
    level10.userInteractionEnabled = NO;
    level10.name = @"level10";
    level10.zPosition = 1;
    [self addChild:level10];
    [self addLabelToButton:level10 withText:@"10"];
    
    level11 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level11 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level11.anchorPoint = CGPointZero;
    level11.position = CGPointMake(level11.size.width*2.3, level11.size.height * 15 );
    level11.userInteractionEnabled = NO;
    level11.name = @"level11";
    level11.zPosition = 1;
    [self addChild:level11];
    [self addLabelToButton:level11 withText:@"11"];
    
    level12 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level12 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level12.anchorPoint = CGPointZero;
    level12.position = CGPointMake(level12.size.width*2.37, level12.size.height * 16.5 );
    level12.userInteractionEnabled = NO;
    level12.name = @"level12";
    level12.zPosition = 1;
    [self addChild:level12];
    [self addLabelToButton:level12 withText:@"12"];
    
    level13 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level13 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level13.anchorPoint = CGPointZero;
    level13.position = CGPointMake(level13.size.width*2.85, level13.size.height * 18 );
    level13.userInteractionEnabled = NO;
    level13.name = @"level13";
    level13.zPosition = 1;
    [self addChild:level13];
    [self addLabelToButton:level13 withText:@"13"];
    
    level14 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level14 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level14.anchorPoint = CGPointZero;
    level14.position = CGPointMake(level14.size.width*3.5, level14.size.height * 19.5 );
    level14.userInteractionEnabled = NO;
    level14.name = @"level4";
    level14.zPosition = 1;
    [self addChild:level14];
    [self addLabelToButton:level14 withText:@"14"];

    level15 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level15 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level15.anchorPoint = CGPointZero;
    level15.position = CGPointMake(level15.size.width*4.05, level15.size.height * 21 );
    level15.userInteractionEnabled = NO;
    level15.name = @"level15";
    level15.zPosition = 1;
    [self addChild:level15];
    [self addLabelToButton:level15 withText:@"15"];
    
    level16 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level16 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level16.anchorPoint = CGPointZero;
    level16.position = CGPointMake(level16.size.width*4.15, level16.size.height * 22.5 );
    level16.userInteractionEnabled = NO;
    level16.name = @"level16";
    level16.zPosition = 1;
    [self addChild:level16];
    [self addLabelToButton:level16 withText:@"16"];
    
    level17 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level17 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level17.anchorPoint = CGPointZero;
    level17.position = CGPointMake(level17.size.width*3.85, level17.size.height * 24 );
    level17.userInteractionEnabled = NO;
    level17.name = @"level7";
    level17.zPosition = 1;
    [self addChild:level17];
    [self addLabelToButton:level17 withText:@"17"];
    
    level18 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level18 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level18.anchorPoint = CGPointZero;
    level18.position = CGPointMake(level18.size.width*3.5, level18.size.height * 25.5 );
    level18.userInteractionEnabled = NO;
    level18.name = @"level18";
    level18.zPosition = 1;
    [self addChild:level18];
    [self addLabelToButton:level18 withText:@"18"];
    
    level19 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level19 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level19.anchorPoint = CGPointZero;
    level19.position = CGPointMake(level19.size.width*3.15, level19.size.height * 27 );
    level19.userInteractionEnabled = NO;
    level19.name = @"level16";
    level19.zPosition = 1;
    [self addChild:level19];
    [self addLabelToButton:level19 withText:@"19"];
    
    level20 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level20 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level20.anchorPoint = CGPointZero;
    level20.position = CGPointMake(level20.size.width*2.9, level20.size.height * 28.5 );
    level20.userInteractionEnabled = NO;
    level20.name = @"level7";
    level20.zPosition = 1;
    [self addChild:level20];
    [self addLabelToButton:level20 withText:@"20"];






}

-(void)addLabelToButton:(SKSpriteNode *)button withText: (NSString* )text{
    
    
    SKLabelNode *label = [SKLabelNode labelNodeWithText:text];
    [label setPosition:CGPointMake(button.frame.size.width/2, button.frame.size.height/2)];
    [label setHorizontalAlignmentMode:SKLabelHorizontalAlignmentModeCenter];
    [label setVerticalAlignmentMode:SKLabelVerticalAlignmentModeCenter];
    label.zPosition = button.zPosition + 1;
    [button addChild:label];
    
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
    level9.contentOffset = scrollView.contentOffset;
    level10.contentOffset = scrollView.contentOffset;
    level11.contentOffset = scrollView.contentOffset;
    level12.contentOffset = scrollView.contentOffset;
    level13.contentOffset = scrollView.contentOffset;
    level14.contentOffset = scrollView.contentOffset;
    level15.contentOffset = scrollView.contentOffset;
    level16.contentOffset = scrollView.contentOffset;
    level17.contentOffset = scrollView.contentOffset;
    level18.contentOffset = scrollView.contentOffset;
    level19.contentOffset = scrollView.contentOffset;
    level20.contentOffset = scrollView.contentOffset;

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

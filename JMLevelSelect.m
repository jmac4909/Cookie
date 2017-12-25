//
//  JMLevelSelect.m
//  cookie
//
//  Created by Jeremy Mackey on 3/6/16.
//  Copyright © 2016 Jeremy Mackey. All rights reserved.
//

#import "JMLevelSelect.h"
#import "JMCookieLevel.h"



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
    JMScrollableNode *level21;
    JMScrollableNode *level22;
    JMScrollableNode *level23;
    JMScrollableNode *level24;
    JMScrollableNode *level25;

    NSMutableArray* levelArray;

    
    SKShapeNode *levelPath;
    CGPoint origPath;
    UIScrollView *scrollViewMenu;
}

-(void)didMoveToView:(SKView *)view{
    
    [super didMoveToView:view];


    
    int unlockedLevel = (int)[[NSUserDefaults standardUserDefaults]integerForKey:@"unlockedLevels"] ;
    levelArray = [[NSMutableArray alloc]init];

    
    scrollBackGround1 = [[JMScrollableNode alloc]initWithImageNamed:@"levelSelectBackground1"];
    [scrollBackGround1 setSize:CGSizeMake(self.scene.size.width*1, self.scene.size.height*2.568216)];
    scrollBackGround1.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height);
    scrollBackGround1.userInteractionEnabled = NO;
    scrollBackGround1.zPosition = -2;
    [self addChild:scrollBackGround1];
    
    scrollBackGround2 = [[JMScrollableNode alloc]initWithImageNamed:@"levelSelectBackground1"];
    [scrollBackGround2 setSize:CGSizeMake(self.scene.size.width*1, self.scene.size.height*2.568216)];
    scrollBackGround2.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height+scrollBackGround1.frame.size.height-2);
    scrollBackGround2.userInteractionEnabled = NO;
    scrollBackGround2.zPosition = -2;
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
    int num = 0;
    num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level1"] ];
    [level1 setNumberOfStars:num forLevel:@"level1"];
    [levelArray addObject:level1];
    [self addChild:level1];
    [self addLabelToButton:level1 withText:@"1"];

    
    
    
    level2 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level2 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level2.anchorPoint = CGPointZero;
    level2.position = CGPointMake(level2.size.width*1.75, level2.size.height * 1.5 );
    level2.userInteractionEnabled = NO;
    level2.name = @"level2";
    level2.zPosition = 1;
    if (unlockedLevel < 2) {
        [level2 setLocked:true];
        
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level2"] ];
        [level2 setNumberOfStars:num forLevel:@"level2"];
    }
    [levelArray addObject:level2];
    [self addChild:level2];
    [self addLabelToButton:level2 withText:@"2"];
    
    
    
    
    level3 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level3 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level3.anchorPoint = CGPointZero;
    level3.position = CGPointMake(level3.size.width*1.6, level3.size.height * 3 );
    level3.userInteractionEnabled = NO;
    level3.name = @"level3";
    level3.zPosition = 1;
    if (unlockedLevel < 3) {
        [level3 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level3"] ];
        [level3 setNumberOfStars:num forLevel:@"level3"];
    }
    [levelArray addObject:level3];
    [self addChild:level3];
    [self addLabelToButton:level3 withText:@"3"];

    
    
    level4 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level4 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level4.anchorPoint = CGPointZero;
    level4.position = CGPointMake(level4.size.width*1.95, level4.size.height * 4.5 );
    level4.userInteractionEnabled = NO;
    level4.name = @"level4";
    level4.zPosition = 1;
    if (unlockedLevel < 4) {
        [level4 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level4"] ];
        [level4 setNumberOfStars:num forLevel:@"level4"];
    }
    [levelArray addObject:level4];
    [self addChild:level4];
    [self addLabelToButton:level4 withText:@"4"];

    
    
    level5 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level5 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level5.anchorPoint = CGPointZero;
    level5.position = CGPointMake(level5.size.width*2.6, level5.size.height * 6 );
    level5.userInteractionEnabled = NO;
    level5.name = @"level5";
    level5.zPosition = 1;
    if (unlockedLevel < 5) {
        [level5 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level5"] ];
        [level5 setNumberOfStars:num forLevel:@"level5"];
    }
    [levelArray addObject:level5];
    [self addChild:level5];
    [self addLabelToButton:level5 withText:@"5"];

    
    level6 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level6 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level6.anchorPoint = CGPointZero;
    level6.position = CGPointMake(level6.size.width*3.2, level6.size.height * 7.5 );
    level6.userInteractionEnabled = NO;
    level6.name = @"level6";
    level6.zPosition = 1;
    if (unlockedLevel < 6) {
        [level6 setLocked:true];
    }else{
        int num = 0;

        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level6"] ];
        [level6 setNumberOfStars:num forLevel:@"level6"];
    }
    [levelArray addObject:level6];
    [self addChild:level6];
    [self addLabelToButton:level6 withText:@"6"];

    
    level7 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level7 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level7.anchorPoint = CGPointZero;
    level7.position = CGPointMake(level7.size.width*3.45, level7.size.height * 9 );
    level7.userInteractionEnabled = NO;
    level7.name = @"level7";
    level7.zPosition = 1;
    if (unlockedLevel < 7) {
        [level7 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level7"] ];
        [level7 setNumberOfStars:num forLevel:@"level7"];
    }
    [levelArray addObject:level7];
    [self addChild:level7];
    [self addLabelToButton:level7 withText:@"7"];

    
    level8 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level8 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level8.anchorPoint = CGPointZero;
    level8.position = CGPointMake(level8.size.width*3.37, level8.size.height * 10.5 );
    level8.userInteractionEnabled = NO;
    level8.name = @"level8";
    level8.zPosition = 1;
    if (unlockedLevel < 8) {
        [level8 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level8"] ];
        [level8 setNumberOfStars:num forLevel:@"level8"];
    }
    [levelArray addObject:level8];
    [self addChild:level8];
    [self addLabelToButton:level8 withText:@"8"];

    
    level9 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level9 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level9.anchorPoint = CGPointZero;
    level9.position = CGPointMake(level9.size.width*3, level9.size.height * 12 );
    level9.userInteractionEnabled = NO;
    level9.name = @"level9";
    level9.zPosition = 1;
    if (unlockedLevel < 9) {
        [level9 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level9"] ];
        [level9 setNumberOfStars:num forLevel:@"level9"];
    }
    [levelArray addObject:level9];
    [self addChild:level9];
    [self addLabelToButton:level9 withText:@"9"];
    
    
    
    level10 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level10 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level10.anchorPoint = CGPointZero;
    level10.position = CGPointMake(level10.size.width*2.55, level10.size.height * 13.5 );
    level10.userInteractionEnabled = NO;
    level10.name = @"level10";
    level10.zPosition = 1;
    if (unlockedLevel < 10) {
        [level10 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level10"] ];
        [level10 setNumberOfStars:num forLevel:@"level10"];
    }
    [levelArray addObject:level10];
    [self addChild:level10];
    [self addLabelToButton:level10 withText:@"10"];
    
    
    level11 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level11 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level11.anchorPoint = CGPointZero;
    level11.position = CGPointMake(level11.size.width*2.3, level11.size.height * 15 );
    level11.userInteractionEnabled = NO;
    level11.name = @"level11";
    level11.zPosition = 1;
    if (unlockedLevel < 11) {
        [level11 setLocked:true];
    }else{
        int num = 0;

        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level11"] ];

        [level11 setNumberOfStars:num forLevel:@"level11"];
    }
    [levelArray addObject:level11];
    [self addChild:level11];
    [self addLabelToButton:level11 withText:@"11"];
    
    level12 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level12 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level12.anchorPoint = CGPointZero;
    level12.position = CGPointMake(level12.size.width*2.37, level12.size.height * 16.5 );
    level12.userInteractionEnabled = NO;
    level12.name = @"level12";
    level12.zPosition = 1;
    if (unlockedLevel < 12) {
        [level12 setLocked:true];
    }else{
        int num = 0;

        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level12"] ];
        [level12 setNumberOfStars:num forLevel:@"level12"];
    }
    [levelArray addObject:level12];
    [self addChild:level12];
    [self addLabelToButton:level12 withText:@"12"];
    
    level13 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level13 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level13.anchorPoint = CGPointZero;
    level13.position = CGPointMake(level13.size.width*2.85, level13.size.height * 18 );
    level13.userInteractionEnabled = NO;
    level13.name = @"level13";
    level13.zPosition = 1;
    if (unlockedLevel < 13) {
        [level13 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level13"] ];
        [level13 setNumberOfStars:num forLevel:@"level13"];
    }
    [levelArray addObject:level13];
    [self addChild:level13];
    [self addLabelToButton:level13 withText:@"13"];
    
    level14 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level14 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level14.anchorPoint = CGPointZero;
    level14.position = CGPointMake(level14.size.width*3.5, level14.size.height * 19.5 );
    level14.userInteractionEnabled = NO;
    level14.name = @"level14";
    level14.zPosition = 1;
    if (unlockedLevel < 14) {
        [level14 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level14"] ];
        [level14 setNumberOfStars:num forLevel:@"level14"];
    }
    [levelArray addObject:level14];
    [self addChild:level14];
    [self addLabelToButton:level14 withText:@"14"];

    level15 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level15 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level15.anchorPoint = CGPointZero;
    level15.position = CGPointMake(level15.size.width*4.05, level15.size.height * 21 );
    level15.userInteractionEnabled = NO;
    level15.name = @"level15";
    level15.zPosition = 1;
    if (unlockedLevel < 15) {
        [level15 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level15"] ];
        [level15 setNumberOfStars:num forLevel:@"level15"];
    }
    [levelArray addObject:level15];
    [self addChild:level15];
    [self addLabelToButton:level15 withText:@"15"];
    
    level16 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level16 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level16.anchorPoint = CGPointZero;
    level16.position = CGPointMake(level16.size.width*4.15, level16.size.height * 22.5 );
    level16.userInteractionEnabled = NO;
    level16.name = @"level16";
    level16.zPosition = 1;
    if (unlockedLevel < 16) {
        [level16 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level16"] ];
        [level16 setNumberOfStars:num forLevel:@"level16"];
    }
    [levelArray addObject:level16];
    [self addChild:level16];
    [self addLabelToButton:level16 withText:@"16"];
    
    level17 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level17 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level17.anchorPoint = CGPointZero;
    level17.position = CGPointMake(level17.size.width*3.85, level17.size.height * 24 );
    level17.userInteractionEnabled = NO;
    level17.name = @"level7";
    level17.zPosition = 1;
    if (unlockedLevel < 17) {
        [level17 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level17"] ];
        [level17 setNumberOfStars:num forLevel:@"level17"];
    }
    [levelArray addObject:level17];
    [self addChild:level17];
    [self addLabelToButton:level17 withText:@"17"];
    
    level18 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level18 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level18.anchorPoint = CGPointZero;
    level18.position = CGPointMake(level18.size.width*3.5, level18.size.height * 25.5 );
    level18.userInteractionEnabled = NO;
    level18.name = @"level18";
    level18.zPosition = 1;
    if (unlockedLevel < 18) {
        [level18 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level18"] ];
        [level18 setNumberOfStars:num forLevel:@"level18"];
    }
    [levelArray addObject:level18];
    [self addChild:level18];
    [self addLabelToButton:level18 withText:@"18"];
    
    level19 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level19 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level19.anchorPoint = CGPointZero;
    level19.position = CGPointMake(level19.size.width*3.15, level19.size.height * 27 );
    level19.userInteractionEnabled = NO;
    level19.name = @"level19";
    level19.zPosition = 1;
    if (unlockedLevel < 19) {
        [level19 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level19"] ];
        [level19 setNumberOfStars:num forLevel:@"level19"];
    }
    [levelArray addObject:level19];
    [self addChild:level19];
    [self addLabelToButton:level19 withText:@"19"];
    
    
    
    level20 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level20 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level20.anchorPoint = CGPointZero;
    level20.position = CGPointMake(level20.size.width*2.9, level20.size.height * 28.5 );
    level20.userInteractionEnabled = NO;
    level20.name = @"level20";
    level20.zPosition = 1;
    if (unlockedLevel < 20) {
        [level20 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level20"] ];
        [level20 setNumberOfStars:num forLevel:@"level20"];
    }
    [levelArray addObject:level20];
    [self addChild:level20];
    [self addLabelToButton:level20 withText:@"20"];
    
    
    
    level21 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level21 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level21.anchorPoint = CGPointZero;
    level21.position = CGPointMake(level21.size.width*2.82, level21.size.height * 30 );
    level21.userInteractionEnabled = NO;
    level21.name = @"level21";
    level21.zPosition = 1;
    if (unlockedLevel < 21) {
        [level21 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level21"] ];
        [level21 setNumberOfStars:num forLevel:@"level21"];
    }
    [levelArray addObject:level21];
    [self addChild:level21];
    [self addLabelToButton:level21 withText:@"21"];
    
    
    
    
    level22 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level22 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level22.anchorPoint = CGPointZero;
    level22.position = CGPointMake(level22.size.width*2.6, level22.size.height * 31.5 );
    level22.userInteractionEnabled = NO;
    level22.name = @"level22";
    level22.zPosition = 1;
    if (unlockedLevel < 22) {
        [level22 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level22"] ];
        [level22 setNumberOfStars:num forLevel:@"level22"];
    }
    [levelArray addObject:level22];
    [self addChild:level22];
    [self addLabelToButton:level22 withText:@"22"];
    
    
    
    level23 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level23 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level23.anchorPoint = CGPointZero;
    level23.position = CGPointMake(level23.size.width*2.33, level23.size.height * 33 );
    level23.userInteractionEnabled = NO;
    level23.name = @"level23";
    level23.zPosition = 1;
    if (unlockedLevel < 23) {
        [level23 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level23"] ];
        [level23 setNumberOfStars:num forLevel:@"level23"];
    }
    [levelArray addObject:level23];
    [self addChild:level23];
    [self addLabelToButton:level23 withText:@"23"];
    
    
    
    level24 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level24 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level24.anchorPoint = CGPointZero;
    level24.position = CGPointMake(level24.size.width*2.1, level24.size.height * 34.5 );
    level24.userInteractionEnabled = NO;
    level24.name = @"level24";
    level24.zPosition = 1;
    if (unlockedLevel < 24) {
        [level24 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level24"] ];
        [level24 setNumberOfStars:num forLevel:@"level24"];
    }
    [levelArray addObject:level24];

    [self addChild:level24];
    [self addLabelToButton:level24 withText:@"24"];
    
    
    
    level25 = [[JMScrollableNode alloc]initWithImageNamed:@"Oval"];
    [level25 setSize:CGSizeMake(self.scene.size.width*0.138667 , self.scene.size.width*0.138667 )];
    level25.anchorPoint = CGPointZero;
    level25.position = CGPointMake(level25.size.width*2, level25.size.height * 36 );
    level25.userInteractionEnabled = NO;
    level25.name = @"level25";
    level25.zPosition = 1;
    if (unlockedLevel < 25) {
        [level25 setLocked:true];
    }else{
        int num = 0;
        num = [self numberOfStarsCollectedFromArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"level25"] ];
        [level25 setNumberOfStars:num forLevel:@"level25"];
    }
    [levelArray addObject:level25];

    [self addChild:level25];
    [self addLabelToButton:level25 withText:@"25"];
    
    //Creates path in scene
    double extraWidth = level1.frame.size.width/8;
    levelPath = [SKShapeNode node];
    CGMutablePathRef pathToDraw = CGPathCreateMutable();
    CGPathMoveToPoint(pathToDraw, NULL, level1.position.x - extraWidth, level1.position.y+level1.frame.size.height/2);

    for (JMScrollableNode *curLevel in levelArray) {

         CGPathAddLineToPoint(pathToDraw, NULL, curLevel.position.x - extraWidth, curLevel.position.y+curLevel.frame.size.height/2);
    }
    
    for (JMScrollableNode *curLevel in [levelArray reverseObjectEnumerator]) {
        
        CGPathAddLineToPoint(pathToDraw, NULL, curLevel.position.x+curLevel.frame.size.width + extraWidth, curLevel.position.y+curLevel.frame.size.height/2);
    }
    CGPathCloseSubpath(pathToDraw);
    levelPath.path = pathToDraw;
    [levelPath setStrokeColor:[SKColor whiteColor]];
    [levelPath setLineWidth:level1.frame.size.width/8];
    [levelPath setLineJoin:(kCGLineJoinRound)];
    [levelPath setLineCap:kCGLineCapRound];
    [levelPath setFillColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.00 alpha:0.50]];
    origPath = levelPath.position;
    [self addChild:levelPath];
    
    scrollViewMenu.contentOffset = CGPointFromString([[NSUserDefaults standardUserDefaults]stringForKey:@"scrollViewOffset"]);

}
-(int)numberOfStarsCollectedFromArray:(NSArray*)array{

    int num = 0;
    for (int i = 0; i < array.count; i++) {

        if ([array[i]integerValue] == 1) {
            num ++;
        }
    }

    return num;
}


-(void)addLabelToButton:(SKSpriteNode *)button withText: (NSString* )text{
    
    NSString *labelText = [NSString stringWithFormat:@"level%@",text];
    SKLabelNode *label = [SKLabelNode labelNodeWithText:text];
    [label setPosition:CGPointMake(button.frame.size.width/2, button.frame.size.height/2)];
    [label setHorizontalAlignmentMode:SKLabelHorizontalAlignmentModeCenter];
    [label setVerticalAlignmentMode:SKLabelVerticalAlignmentModeCenter];
    label.userInteractionEnabled = NO;
    label.name = labelText;
    label.zPosition = button.zPosition + 1;
    [button addChild:label];
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{

    scrollBackGround1.contentOffset = scrollView.contentOffset;
    scrollBackGround2.contentOffset = scrollView.contentOffset;

    for (JMScrollableNode *curLevel in levelArray) {
        curLevel.contentOffset = scrollView.contentOffset;

    }


    CGPoint x = CGPointMake(origPath.x - scrollView.contentOffset.x,
                            origPath.y - scrollView.contentOffset.y);
    [levelPath setPosition:x];

    [[NSUserDefaults standardUserDefaults]setValue:NSStringFromCGPoint(scrollViewMenu.contentOffset) forKey:@"scrollViewOffset"];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    JMCookieLevel *level = [[JMCookieLevel alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
    
    int unlockedLevel = (int)[[NSUserDefaults standardUserDefaults]integerForKey:@"unlockedLevels"] ;

    
    if([node.name isEqualToString:@"level1"])
    {

        level.currentLevel = 1;


    }else if ([node.name isEqualToString:@"level2"])
    {

        if (unlockedLevel>=2) {
            level.currentLevel = 2;

        }

    
    }else if ([node.name isEqualToString:@"level3"])
    {
        if (unlockedLevel>=3) {
            level.currentLevel = 3;
            
        }
        
        
    }else if ([node.name isEqualToString:@"level4"])
    {
        if (unlockedLevel>=4) {
            level.currentLevel = 4;
            
        }
        
        
    }else if ([node.name isEqualToString:@"level5"])
    {
        if (unlockedLevel>=5) {
            level.currentLevel = 5;
            
        }
        
        
    }else if ([node.name isEqualToString:@"level6"])
    {
        if (unlockedLevel>=6) {
            level.currentLevel = 6;
            
        }
        
        
    }else if ([node.name isEqualToString:@"level7"])
    {
        if (unlockedLevel>=7) {
            level.currentLevel = 7;
            
        }
        
        
    }
    else if ([node.name isEqualToString:@"level8"])
    {
        if (unlockedLevel>=8) {
            level.currentLevel = 8;
            
        }
        
        
        
    }else if ([node.name isEqualToString:@"level9"])
    {
        if (unlockedLevel>=9) {
            level.currentLevel = 9;
            
        }
        
        
        
    }
    else if ([node.name isEqualToString:@"level10"])
    {
        if (unlockedLevel>=10) {
            level.currentLevel = 10;
            
        }
        
        
        
    }
    
    else if ([node.name isEqualToString:@"level11"])
    {
        if (unlockedLevel>=11) {
            level.currentLevel = 11;
            
        }
        
        
        
    }
    else if ([node.name isEqualToString:@"level12"])
    {
        if (unlockedLevel>=12) {
            level.currentLevel = 12;
            
        }
        
        
        
    }
    else if ([node.name isEqualToString:@"level13"])
    {
        if (unlockedLevel>=13) {
            level.currentLevel = 13;
            
        }
        
        
        
    }
    else if ([node.name isEqualToString:@"level14"])
    {
        if (unlockedLevel>=14) {
            level.currentLevel = 14;
            
        }
        
        
        
    }
    else if ([node.name isEqualToString:@"level15"])
    {
        if (unlockedLevel>=15) {
            level.currentLevel = 15;
            
        }
    
        
    }
    else if ([node.name isEqualToString:@"level16"])
    {
        if (unlockedLevel>=16) {
            level.currentLevel = 16;
            
        }
    }
    else if ([node.name isEqualToString:@"level17"])
    {
        if (unlockedLevel>=17) {
            level.currentLevel = 17;
            
        }
    }
    else if ([node.name isEqualToString:@"level18"])
    {
        if (unlockedLevel>=18) {
            level.currentLevel = 18;
            
        }
    }
    else if ([node.name isEqualToString:@"level19"])
    {
        if (unlockedLevel>=19) {
            level.currentLevel = 19;
            
        }
    }
    else if ([node.name isEqualToString:@"level20"])
    {
        if (unlockedLevel>=20) {
            level.currentLevel = 20;
            
        }
    }
    else if ([node.name isEqualToString:@"level21"])
    {
        if (unlockedLevel>=21) {
            level.currentLevel = 21;
            
        }
    }
    else if ([node.name isEqualToString:@"level22"])
    {
        if (unlockedLevel>=22) {
            level.currentLevel = 22;
            
        }
    }
    else if ([node.name isEqualToString:@"level23"])
    {
        if (unlockedLevel>=23) {
            level.currentLevel = 23;
            
        }
    }
    else if ([node.name isEqualToString:@"level24"])
    {
        if (unlockedLevel>=24) {
            level.currentLevel = 24;
            
        }
    }
    else if ([node.name isEqualToString:@"level25"])
    {
        if (unlockedLevel>=25) {
            level.currentLevel = 25;
            
        }
    }
    
    if ( level.currentLevel > 0) {
        NSLog(@"Currentlt level you tapped on %d",level.currentLevel);
        [self.view presentScene:level];

    }

}

- (void)willMoveFromView:(SKView *)view{
    
    [super willMoveFromView:view];
    [[NSUserDefaults standardUserDefaults]synchronize];

    scrollViewMenu = nil;
    
}

@end

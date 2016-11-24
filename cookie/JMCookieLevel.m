//
//  JMCookieLevel.m
//  cookie
//
//  Created by Jeremy Mackey on 11/24/16.
//  Copyright © 2016 Jeremy Mackey. All rights reserved.
//

#import "JMCookieLevel.h"

@implementation JMCookieLevel


-(void)didMoveToView:(SKView *)view{
    
    [super didMoveToView:view];
    
    [self setUpLevel];
}

-(void)setUpLevel{
    
    switch (self.currentLevel) {
        case 1:
            
            [self setLevel1];
            
            break;
        case 2:
            
            [self setLevel2];
            
            break;
        case 3:
            
            [self setLevel3];
            
            break;
        case 4:
            
           [self setLevel4];
            
            break;
        case 5:
            
            [self setLevel5];
            
            break;
        case 6:
            
            [self setLevel6];
            
            break;
            
        case 7:
            
            [self setLevel7];
            
            break;
            
        case 8:
            
            [self setLevel8];
            
            break;
            
        case 9:
            
            [self setLevel9];
            
            break;
            
        default:
            break;
    }
    
    if (self.currentLevel == 1) {
        
    }
    
}
#pragma mark - Levels

-(void)setLevel1{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/9, self.frame.size.height/6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.87];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addFloor];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.09];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/9];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/8.8];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/3.3];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];

    
}

-(void)setLevel2{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/1.2) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/3];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addFloor];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.3];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.7];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel3{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/1.2) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addFloor];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.1];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/9];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel4{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addFloor];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.1];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/4];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel5{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/9,self.frame.size.height/1.2) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addFloor];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.15];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.25];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.5];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel6{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addFloor];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.7];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/3];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/6];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel7{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/7, self.frame.size.height/2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/7, self.frame.size.height/1.6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/7];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/3];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addFloor];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/10];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/7];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/5.5];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel8{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/7, self.frame.size.height/2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.5, self.frame.size.height/3) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/6.5];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/3];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addFloor];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.7];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/5.5];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}
#warning Level 9 not done
-(void)setLevel9{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addFloor];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.7];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/3];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/6];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}



#pragma mark - Game methods
-(void)restart{
    
    JMCookieLevel *scene = [[JMCookieLevel alloc]initWithSize:self.size];
    scene.currentLevel = self.currentLevel;
    [self.view presentScene:scene];
    
}
-(void)endGame{
    [super endGame];
}
-(void)menuButtonPress{
    
    [super menuButtonPress];
    
}
-(void)nextLevelButtonPress{
    
    JMCookieLevel *scene = [[JMCookieLevel alloc]initWithSize:self.size];
    scene.currentLevel = self.currentLevel + 1;
    [self.view presentScene:scene];
    
}


@end
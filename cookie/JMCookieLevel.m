//
//  JMCookieLevel.m
//  cookie
//
//  Created by Jeremy Mackey on 11/24/16.
//  Copyright © 2016 Jeremy Mackey. All rights reserved.
//

#import "JMCookieLevel.h"

@implementation JMCookieLevel{
    

}


-(void)didMoveToView:(SKView *)view{
    
    [super didMoveToView:view];

    [self setUpLevel];
}

-(void)setUpLevel{
    NSLog(@"Set up level %d",self.currentLevel);
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
            
        case 10:
            
            [self setLevel10];
            
            break;
            
        case 11:
            
            [self setLevel11];
            
            break;
            
        case 12:
            
            [self setLevel12];
            
            break;
            
        case 13:
            
            [self setLevel13];
            
            break;
            
        case 14:
            
            [self setLevel14];
            
            break;
        case 15:
            
            [self setLevel15];
            
            break;
        case 16:
            
            [self setLevel16];
            
            break;
        case 17:
            
            [self setLevel17];
            
            break;
        case 18:
            
            [self setLevel18];
            
            break;
        case 19:
            
            [self setLevel19];
            
            break;
        case 20:
            
            [self setLevel20];
            
            break;
        case 21:
            
            [self setLevel21];
            
            break;
        case 22:
            
            [self setLevel22];
            
            break;
        case 23:
            
            [self setLevel23];
            
            break;
        case 24:
            
            [self setLevel24];
            
            break;
        case 25:
            
            [self setLevel25];
            
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
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];

    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
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
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
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

-(void)setLevel3{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
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

-(void)setLevel4{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/9,self.frame.size.height/1.2) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
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

-(void)setLevel5{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/1.6];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:M_PI_2];
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation,wx2Value,wy2Value,w2Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
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

-(void)setLevel6{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/7, self.frame.size.height/2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/7, self.frame.size.height/1.6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/7];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/3];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
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

-(void)setLevel7{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/7, self.frame.size.height/2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.5, self.frame.size.height/3) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/6.5];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/3];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
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

-(void)setLevel8{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/7, self.frame.size.height/2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/3) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/6.5];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/3];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation,wx2Value,wy2Value,w2Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/2.4];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/1.6];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/2.4];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.6];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel9{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height/2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/7, self.frame.size.height/6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.3];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:M_PI_2];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation,wx2Value,wy2Value,w2Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/2.85];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.1];

    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.5];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.1];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel10{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/6.5, self.frame.size.height/2.5)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/1.2) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/6.5];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/3];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/6.5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation,wx2Value,wy2Value,w2Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/6.2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.7];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.5];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.1];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel11{
    
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/1.2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/6.2, self.frame.size.height/2.6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/6.5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.6];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation,wx2Value,wy2Value,w2Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/4.5];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/8];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.5];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.1];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}
-(void)setLevel12{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height/1.2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.15, self.frame.size.height/1.6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/4];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:1.5708];
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation,wx3Value,wy3Value,w3Rotation, nil];
    [self addWalls:wallArray];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/6.5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.6];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:-0.436332];
    NSArray *bounceWallArray = [NSArray arrayWithObjects:wx2Value,wy2Value,w2Rotation, nil];
    [self addBounceWalls:bounceWallArray];
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/6.5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    

}
-(void)setLevel13{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/1.2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/6.8, self.frame.size.height/4) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls

    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/4.6];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:1.5708];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:0];
    

    

    
    NSArray *wallArray = [NSArray arrayWithObjects:wx3Value,wy3Value,w3Rotation,wx2Value,wy2Value,w2Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/3];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/7.5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/6.8];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel14{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/1.2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/4) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/4.6];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:1.5708];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.3];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:0];
    
    
    
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx3Value,wy3Value,w3Rotation,wx2Value,wy2Value,w2Rotation, nil];
    [self addWalls:wallArray];
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/3];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/7.5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.5];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}
-(void)setLevel15{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/1.2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/4) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/4.8];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.3];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.3];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx4Value = [NSNumber numberWithFloat:self.frame.size.width/4.8];
    NSNumber *wy4Value = [NSNumber numberWithFloat:self.frame.size.height/4];
    NSNumber *w4Rotation = [NSNumber numberWithFloat:-0.785398];
    
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx3Value,wy3Value,w3Rotation,wx2Value,wy2Value,w2Rotation,wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    NSArray *bounceWallArray = [NSArray arrayWithObjects:wx4Value,wy4Value,w4Rotation, nil];
    [self addBounceWalls:bounceWallArray];
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/3];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/7.5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}
-(void)setLevel16{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/1.7)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/7.5, self.frame.size.height/3) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/4.8];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.3];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.3];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:-0.785398];
    
    
    
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx2Value,wy2Value,w2Rotation,wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    NSArray *bounceWallArray = [NSArray arrayWithObjects:wx3Value,wy3Value,w3Rotation, nil];
    [self addBounceWalls:bounceWallArray];
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/7.5];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/7.5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel17{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/5, self.frame.size.height/1.7)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.08, self.frame.size.height/3) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/2.2];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:0];
    
    
    
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx2Value,wy2Value,w2Rotation, nil];
    [self addWalls:wallArray];
    
    NSArray *bounceWallArray = [NSArray arrayWithObjects:wx3Value,wy3Value,w3Rotation,wx1Value,wy1Value,w1Rotation, nil];
    [self addBounceWalls:bounceWallArray];
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/3.5];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel18{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height/1.7)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/3) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.35];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/3.5];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:0];
    
    
    
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx2Value,wy2Value,w2Rotation,wx3Value,wy3Value,w3Rotation,wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    

}

-(void)setLevel19{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height/1.7)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/2, self.frame.size.height/6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:0];
    
    
    
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx2Value,wy2Value,w2Rotation,wx3Value,wy3Value,w3Rotation,wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel20{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/2, self.frame.size.height/1.7)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/3.5) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:0];
    
    
    
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx2Value,wy2Value,w2Rotation,wx3Value,wy3Value,w3Rotation, nil];
    [self addWalls:wallArray];
    
    NSArray *breakWallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation, nil];
    [self addBreakWalls:breakWallArray];
    
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/2];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.6];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel21{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/5, self.frame.size.height/1.7)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.2, self.frame.size.height/1.6) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.45];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:1.5708];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/4];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:0];
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx2Value,wy2Value,w2Rotation,wx3Value,wy3Value,w3Rotation, nil];
    [self addWalls:wallArray];
    
    NSArray *breakWallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation, nil];
    [self addBreakWalls:breakWallArray];
    
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel22{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/5, self.frame.size.height/1.5)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/4) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.7];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/4];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:-0.645772];
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx2Value,wy2Value,w2Rotation,wx3Value,wy3Value,w3Rotation,wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    NSArray *bounceWallArray = [NSArray arrayWithObjects:wx3Value,wy3Value,w3Rotation, nil];
    [self addBounceWalls:bounceWallArray];
    
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.25];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/1.2];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.9];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel23{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/1.3, self.frame.size.height/1.5)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/4.8, self.frame.size.height/4.5) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.3];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.3];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/3.5];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:1.39626];
    
    NSNumber *wx4Value = [NSNumber numberWithFloat:self.frame.size.width/6];
    NSNumber *wy4Value = [NSNumber numberWithFloat:self.frame.size.height/2.5];
    NSNumber *w4Rotation = [NSNumber numberWithFloat:-1.39626];
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx2Value,wy2Value,w2Rotation,wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    NSArray *breakWallArray = [NSArray arrayWithObjects:wx3Value,wy3Value,w3Rotation,wx4Value,wy4Value,w4Rotation, nil];
    [self addBreakWalls:breakWallArray];
    
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.3];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/4.8];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/3.3];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];
    
    
}

-(void)setLevel24{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/1.2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/5) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/4.5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/2.4];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx3Value = [NSNumber numberWithFloat:self.frame.size.width/5];
    NSNumber *wy3Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    NSNumber *w3Rotation = [NSNumber numberWithFloat:0.645772];
    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation, nil];
    [self addWalls:wallArray];
    
    NSArray *bounceWallArray = [NSArray arrayWithObjects:wx3Value,wy3Value,w3Rotation,wx2Value,wy2Value,w2Rotation, nil];
    [self addBounceWalls:bounceWallArray];
    
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/3.5];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/4.4];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.5];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/4.4];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/2.2];
    
    NSArray *starArray = [NSArray arrayWithObjects:sx1Value,sy1Value,sx2Value,sy2Value,sx3Value,sy3Value, nil];
    [self addStars:starArray];

    
}


-(void)setLevel25{
    //Adds Cookie
    [self createCookie:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/1.2)];
    
    //Adds Milk
    [self createMilkAt:CGPointMake(self.frame.size.width/1.4, self.frame.size.height/5) withScale:.6 and:.5];
    
    //Adds Walls
    //X and Y of walls
    
    NSNumber *wx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *wy1Value = [NSNumber numberWithFloat:self.frame.size.height/1.4];
    NSNumber *w1Rotation = [NSNumber numberWithFloat:0];
    
    NSNumber *wx2Value = [NSNumber numberWithFloat:self.frame.size.width/4.5];
    NSNumber *wy2Value = [NSNumber numberWithFloat:self.frame.size.height/2.4];
    NSNumber *w2Rotation = [NSNumber numberWithFloat:0];
    

    
    
    NSArray *wallArray = [NSArray arrayWithObjects:wx1Value,wy1Value,w1Rotation,wx2Value,wy2Value,w2Rotation, nil];
    [self addWalls:wallArray];
    
 
    
    
    //Adds floor
    [self addExtras];
    
    //Add Stars
    //X and Y of stars
    NSNumber *sx1Value = [NSNumber numberWithFloat:self.frame.size.width/1.4];
    NSNumber *sy1Value = [NSNumber numberWithFloat:self.frame.size.height/3.5];
    
    NSNumber *sx2Value = [NSNumber numberWithFloat:self.frame.size.width/4.4];
    NSNumber *sy2Value = [NSNumber numberWithFloat:self.frame.size.height/1.2];
    
    NSNumber *sx3Value = [NSNumber numberWithFloat:self.frame.size.width/4.4];
    NSNumber *sy3Value = [NSNumber numberWithFloat:self.frame.size.height/2];
    
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
    if ([[NSUserDefaults standardUserDefaults]integerForKey:@"unlockedLevels"] < self.currentLevel+1) {
        [[NSUserDefaults standardUserDefaults]setInteger:self.currentLevel+1 forKey:@"unlockedLevels"];
        [[NSUserDefaults standardUserDefaults]synchronize];

    }

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

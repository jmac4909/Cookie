//
//  GameViewController.m
//  cookie
//
//  Created by Jeremy Mackey on 10/6/15.
//  Copyright (c) 2015 Jeremy Mackey. All rights reserved.
//

#import "GameViewController.h"
#import "JMLevelSelect.h"
#import "JMLevel01.h"


@implementation SKScene (Unarchive)


@end

@implementation GameViewController

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
    
    skView.showsPhysics = NO;
    // Create and configure the scene.
    JMLevelSelect *scene = [[JMLevelSelect alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height)];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    [scene setSize:self.view.frame.size];

    
    
    

    // Present the scene.
    [skView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskPortrait;
    } else {
        return UIInterfaceOrientationMaskPortrait;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end

//
//  WelcomeScene.m
//  SpriteKitDemo
//
//  Created by Paolo on 17/05/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "WelcomeScene.h"


@interface WelcomeScene ()


@property BOOL sceneCreated;



@end




@implementation WelcomeScene

- (void) didMoveToView:(SKView *)view
{
    if (!self.sceneCreated)
    {
        self.backgroundColor = [SKColor whiteColor];
        self.scaleMode = SKSceneScaleModeAspectFill;
        
        
        
        [self addChild: [self createWelcomeNode]];
        self.sceneCreated = YES;
    }
}

- (SKLabelNode *) createWelcomeNode
{
    SKLabelNode *welcomeNode =
    [SKLabelNode labelNodeWithFontNamed:@"Bradley Hand"];
    
    welcomeNode.name = @"welcomeNode";
    welcomeNode.text = @"SpriteKitDemo - Tap Screen to Play";
    welcomeNode.fontSize = 44;
    welcomeNode.fontColor = [SKColor blackColor];
    
    welcomeNode.position =
    CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    
    return welcomeNode;
}




- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    SKNode *welcomeNode = [self childNodeWithName:@"welcomeNode"]; // prende welcome node
    
    if (welcomeNode != nil) // se diverso da nil
    {
        SKAction *fadeAway = [SKAction fadeOutWithDuration:1.0]; // definisce un azione
        
        /*
        [welcomeNode runAction:fadeAway completion:^{
            SKScene *archeryScene =
            [[ArcheryScene alloc]initWithSize:self.size];
            
            SKTransition *doors =
            [SKTransition doorwayWithDuration:1.0];
            
            [self.view presentScene:archeryScene transition:doors];
        }
         ];
         */
    }
}


@end

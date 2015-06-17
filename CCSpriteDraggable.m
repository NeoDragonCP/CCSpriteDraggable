//
//  CCSpriteDraggable.m
//  ProtectorsC3
//
//  Created by Stephen McVicker on 30/09/2014.
//  Copyright 2014 Calis Projects. All rights reserved.
//

#import "CCSpriteDraggable.h"

@implementation CCSpriteDraggable


// Check which device the game is running on

#if __CC_PLATFORM_IOS || __CC_PLATFORM_ANDROID
// Touch Input
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
  
}

- (void)touchMoved:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
  
  CGPoint pos = [self.parent convertToNodeSpace:touch.locationInWorld];
  self.position = pos;
}

- (void)touchEnded:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
  
}

#elif __CC_PLATFORM_MAC
// Mouse Input
- (void) mouseDown:(NSEvent *)event
{
  
}

- (void) mouseDragged:(NSEvent *)event
{
  
  CGPoint pos = [self.parent convertToNodeSpace:event.locationInWorld];
  self.position = pos;
  
}

- (void) mouseUp:(NSEvent *)event
{
  
}

- (void) mouseDownEntered:(NSEvent*) event
{}

- (void) mouseDownExited:(NSEvent*) event
{}

- (void) mouseUpInside:(NSEvent*) event
{}

- (void) mouseUpOutside:(NSEvent*) event
{}

#endif



@end

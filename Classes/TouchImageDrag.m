//
//  TouchImageDrag.m
//  Pictogramaker
//
//  Created by Yuka.K on 11/05/14.
//  Copyright 2011 none. All rights reserved.
//

#import "TouchImageDrag.h"


@implementation TouchImageDrag


-(void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
	
	//１本操作か２本操作か
	NSSet *allTouches = [event allTouches];
	switch ([allTouches count]) {
		case 1: {
			//self.scrollEnabled = NO;
			break;
		}
		case 2: {
			//self.scrollEnabled = YES;
			break;
		}
		default:{
		}
	}
	
	//***************
	//allTouches[0]
	
	//drag操作
	/*
	if (!self.dragging) {
		
		startLocation = [[touches anyObject] locationInView:self];  
		[[self superview] bringSubviewToFront:self];  
	}
	
	[super touchesBegan: touches withEvent: event];
	 */
	
}
						
@end

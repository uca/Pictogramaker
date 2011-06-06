//
//  ScrollDragPict.m
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import "ScrollDragPict.h"


@implementation ScrollDragPict


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

//scrollView動作
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	//１本操作か２本操作か
	if( [touches count] == 1 ){
		self.scrollEnabled = NO;
	} else {
		self.scrollEnabled = YES;
	}
	
	//drag操作
	if (!self.dragging) {
		
		[self.nextResponder touchesBegan: touches withEvent:event]; 
		
		startLocation = [[touches anyObject] locationInView:self];  
		[[self superview] bringSubviewToFront:self];  
	}
	[super touchesBegan: touches withEvent: event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	if (!self.dragging) {
		
		[self.nextResponder touchesMoved: touches withEvent:event];
		
		CGPoint pt = [[touches anyObject] locationInView:self];  
		CGRect frame = [self frame];  
		frame.origin.x += pt.x - startLocation.x;  
		frame.origin.y += pt.y - startLocation.y;  
		[self setFrame:frame];  		
	}	
	[super touchesMoved: touches withEvent: event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	if (!self.dragging) {
		[self.nextResponder touchesEnded: touches withEvent:event]; 
	}		
	[super touchesEnded: touches withEvent: event];
	
}

- (void)dealloc {
    [super dealloc];
}


@end

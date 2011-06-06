//
//  ColorPicker.m
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import "ColorPicker.h"

@implementation ColorPicker
@synthesize delegate;


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

/* touch */

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	int pointX = 15;
	int pointY = 76;
	int pointXDual = 10;
	int pointYDual = 8;
	int colorSize = 90;
	
	CGPoint touchPos = [[touches anyObject] locationInView:self];
	NSLog(@"%f, %f", touchPos.x, touchPos.y);
	
	//*****************選択したcolorを取得
	if (touchPos.y >= pointY && touchPos.y <= pointY + colorSize ) {
		//1段目
		if (touchPos.x >= pointX && touchPos.x <= pointX + colorSize) {
			NSLog(@"color1");
		}else if (touchPos.x >= pointX + colorSize + pointXDual && touchPos.x <= pointX + colorSize * 2 + pointXDual  ) {
			NSLog(@"color2");
		}else if (touchPos.x >= pointX + colorSize * 2 + pointXDual * 2 && touchPos.x <= pointX + colorSize * 3 + pointXDual * 2 ) {
			NSLog(@"color3");
		}
	}else if ( touchPos.y >= pointY + colorSize + pointYDual && touchPos.y <= pointY + colorSize * 2 + pointYDual ) {
		//２段目
		if (touchPos.x >= pointX && touchPos.x <= pointX + colorSize) {
			NSLog(@"color4");
		}else if (touchPos.x >= pointX + colorSize + pointXDual && touchPos.x <= pointX + colorSize * 2 + pointXDual  ) {
			NSLog(@"color5");
		}else if (touchPos.x >= pointX + colorSize * 2 + pointXDual * 2 && touchPos.x <= pointX + colorSize * 3 + pointXDual * 2 ) {
			NSLog(@"color6");
		}
	}else if ( touchPos.y >= pointY + colorSize * 2 + pointYDual * 2 && touchPos.y <= pointY + colorSize * 3 + pointYDual * 2 ) {
		//3段目
		if (touchPos.x >= pointX && touchPos.x <= pointX + colorSize) {
			NSLog(@"color7");
		}else if (touchPos.x >= pointX + colorSize + pointXDual && touchPos.x <= pointX + colorSize * 2 + pointXDual  ) {
			NSLog(@"color8");
		}else if (touchPos.x >= pointX + colorSize * 2 + pointXDual * 2 && touchPos.x <= pointX + colorSize * 3 + pointXDual * 2 ) {
			NSLog(@"color9");
		}
	}
	
	/*
	 [self.nextResponder touchesBegan: touches withEvent:event];
	 [super touchesBegan: touches withEvent: event];
	 */
	[delegate view:self touchesBegan:touches withEvent:event];
	
}

- (void)touchesMoved: (NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"touchesMoved");
	[delegate view:self touchesMoved:touches withEvent:event];
}

- (void)touchesEnded: (NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"touchesEnded");
	[delegate view:self touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"touchesCancelled");
	[delegate view:self touchesCancelled:touches withEvent:event];
}


- (void)dealloc {
    [super dealloc];
}


@end

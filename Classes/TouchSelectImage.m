//
//  TouchSelectImage.m
//  Pictogramaker
//
//  Created by Yuka.K on 11/05/14.
//  Copyright 2011 none. All rights reserved.
//

#import "TouchSelectImage.h"
#import "PictgramakeAppDelegate.h"
//#import "ColorSelect.h"


@implementation TouchSelectImage

//ColorSelect *colorView;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

//UIImageをtouch
-(void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
	//選択したImageをセット
	PictgramakeAppDelegate* app = (PictgramakeAppDelegate*)[UIApplication sharedApplication].delegate;
	app.tag = self.tag;
	
	NSLog(@"tag:%d",self.tag);
	
	/*
	//TODO: superクラスのtouchイベントを呼ぶ
	[self.nextResponder touchesBegan: touches withEvent:event];
	[super touchesBegan: touches withEvent: event];
	*/
		
	//[colorSelect_ changeView];
	
}


- (void)dealloc {
    [super dealloc];
}


@end

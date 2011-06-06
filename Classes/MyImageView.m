//
//  MyImageView.m
//  Pictogramaker
//
//  Created by Yuka.K on 11/05/14.
//  Copyright 2011 none. All rights reserved.
//

#import "MyImageView.h"
#import "PictgramakeAppDelegate.h"


@implementation MyImageView


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
}
*/

- (void)dealloc {
    [super dealloc];
}

-(void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
	NSLog(@"%s", __func__);
	NSLog(@"tag = %d", self.tag);
	
	PictgramakeAppDelegate* app = (PictgramakeAppDelegate*)[UIApplication sharedApplication].delegate;
	app.tag = self.tag;
}

@end

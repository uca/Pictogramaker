//
//  ColorSelect.m
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import "ColorSelect.h"
#import "ColorPicker.h"
#import "ShapeSelectView.h"

@implementation ColorSelect


ShapeSelectView *shapeView;

- (void)loadView {
	
	/*
	ColorPicker *contentView = [[ColorPicker alloc] initWithFrame:CGRectMake(0,20,320,460)];
	[contentView setDelegate:self];
	self.view = contentView;
	[contentView release];
	 */
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void)dealloc {
    [super dealloc];
}


/* TouchesDelegate */
- (void)view:(UIView*)view touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
	NSLog(@"delegate touchesBegan");
		
}

- (void)view:(UIView*)view touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event {
	NSLog(@"delegate touchesMoved");
}

- (void)view:(UIView*)view touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
	NSLog(@"delegate touchesEnded");
}

- (void)view:(UIView*)view touchesCancelled:(NSSet*)touches withEvent:(UIEvent*)event {
	NSLog(@"delegate touchesCancelled");
}

- (void) changeView{
	//*****************ShapeSelectViewに遷移
	shapeView = [[ShapeSelectView alloc] 
				 initWithNibName:@"ShapeSelectView" 
				 bundle:nil];
	NSLog(@"ShapeSelectView");
	[UIView beginAnimations:@"flipping view" context:nil];
	[UIView setAnimationDuration:1];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlDown 
						   forView:self.view cache:YES];
	
	[super.view addSubview:shapeView.view];
	[UIView commitAnimations];
	
}

@end

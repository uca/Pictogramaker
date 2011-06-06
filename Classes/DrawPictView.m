//
//  DrawPictView.m
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import "DrawPictView.h"
#import "DrawNewPictView.h"
#import "PictItemList.h"
#import "ScrollDragPict.h"

@implementation DrawPictView

DrawNewPictView *drawNewPict;
PictItemList *pictItemList;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIImage *image = [UIImage imageNamed:@"shape4.png"];

	scrollDragView = [[ScrollDragPict alloc] initWithFrame:CGRectMake(0, 84, image.size.width, image.size.height)];
	scrollDragView.backgroundColor = [UIColor redColor];
	[self.view addSubview:scrollDragView];
	[scrollDragView release];
	
	imageView = [[UIImageView alloc] initWithImage:image];
	//scrollDragView.frame = CGRectMake(0, 85, image.size.width,image.size.height);
	scrollDragView.contentSize = imageView.frame.size;
	[scrollDragView addSubview:imageView];
	[image release];
	[imageView release];
	scrollDragView.delegate = self; 
	scrollDragView.minimumZoomScale = 0.5;
	scrollDragView.maximumZoomScale = 4.0;
	scrollDragView.delaysContentTouches = NO;
	
	//**********************
	UIImage *image2 = [UIImage imageNamed:@"shape3.png"];

	scrollDragView2 = [[ScrollDragPict alloc] initWithFrame:CGRectMake(0, 84, image2.size.width, image2.size.height)];
	[self.view addSubview:scrollDragView2];
	[scrollDragView2 release];
	
	imageView2 = [[UIImageView alloc] initWithImage:image2];
	//scrollDragView2.frame = CGRectMake(0, 85, image2.size.width,image2.size.height);
	scrollDragView2.contentSize = imageView2.frame.size;
	[scrollDragView2 addSubview:imageView2];
	[imageView2 release];
	
	scrollDragView2.delegate = self; 
	scrollDragView2.minimumZoomScale = 0.5;
	scrollDragView2.maximumZoomScale = 4.0;
	scrollDragView2.delaysContentTouches = NO;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)_scrollView {
	return imageView;
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
	[super viewDidUnload];
}

- (void)dealloc {
	//画面の後処理（メモリ解放） 
	[drawNewPict release];
	[self.view removeFromSuperview];
    [super dealloc];
}

//pressNewButton
-(IBAction)pressNewButton:(id)sender {
	//DrawNewPictViewを表示
	drawNewPict = [[DrawNewPictView alloc] 
							initWithNibName:@"DrawNewPictView" 
							bundle:nil];

	[UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp 
						   forView:self.view cache:YES];	
	[self.view addSubview:drawNewPict.view];
	 
    [UIView commitAnimations];

}

//pressItemButton
-(IBAction)pressItemButton:(id)sender {
	//PictItemListを表示
	pictItemList = [[PictItemList alloc] 
				initWithNibName:@"PictItemList" 
				bundle:nil];
	
	[UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft 
						   forView:self.view cache:YES];	
	[self.view addSubview:pictItemList.view];
	
    [UIView commitAnimations];
	
}

//View切り替えメソッド
- (void) changeView{
	
	drawNewPict = [[DrawNewPictView alloc] 
				   initWithNibName:@"DrawNewPictView" 
				   bundle:nil];
	
	[UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp 
						   forView:self.view cache:YES];	
	[self.view addSubview:drawNewPict.view];
	
    [UIView commitAnimations];	
}


@end

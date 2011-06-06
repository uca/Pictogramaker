//
//  DrawNewPictView.m
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import "DrawNewPictView.h"
#import "DrawPictView.h"
#import "PictItemList.h"
#import "ScrollDragPict.h"

@implementation DrawNewPictView

DrawPictView *drawPict;
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
	
	scrollDragView = [[ScrollDragPict alloc] initWithFrame:CGRectMake(0, 84, 320, 480)];
	[self.view addSubview:scrollDragView];
	[scrollDragView release];
	
	UIImage *image = [UIImage imageNamed:@"shape4.png"];
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
	scrollDragView2 = [[ScrollDragPict alloc] initWithFrame:CGRectMake(0, 84, 320, 480)];
	[self.view addSubview:scrollDragView2];
	[scrollDragView2 release];
	
	UIImage *image2 = [UIImage imageNamed:@"shape2.png"];
	imageView2 = [[UIImageView alloc] initWithImage:image2];
	imageView2.backgroundColor = [UIColor whiteColor];
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
- (void)scrollViewDidEndDragging:(UIScrollView *)_scrollView 
				  willDecelerate:(BOOL)decelerate
{
	offset.x = _scrollView.contentOffset.x/screenScale;
	offset.y = _scrollView.contentOffset.y/screenScale;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)_scrollView
{
	offset.x = _scrollView.contentOffset.x/screenScale;
	offset.y = _scrollView.contentOffset.y/screenScale;
}

- (void)scrollViewDidEndZooming:(UIScrollView *)_scrollView 
					   withView:(UIView *)view atScale:(float)scale {
    [scrollView setZoomScale:scale+0.01 animated:NO];
	[scrollView setZoomScale:scale animated:NO];
	screenScale = scale;	
	offset.x = _scrollView.contentOffset.x/screenScale;
	offset.y = _scrollView.contentOffset.y/screenScale;
}
*/



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
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	//画面の後処理（メモリ解放） 
	[drawPict release];
	[self.view removeFromSuperview];
    [super dealloc];
}

//pressNewButton
-(IBAction)pressNewButton:(id)sender {
	//DrawNewPictViewを表示
	drawPict = [[DrawPictView alloc] 
				   initWithNibName:@"DrawPictView" 
				   bundle:nil];
	
	[UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp 
						   forView:self.view cache:YES];	
	[self.view addSubview:drawPict.view];
	
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


@end

//
//  DrawNewPictView.h
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScrollDragPict.h"


@interface DrawNewPictView : UIViewController {

	ScrollDragPict *scrollDragView;
	UIImageView *imageView;
	ScrollDragPict *scrollDragView2;
	UIImageView *imageView2;

}

-(IBAction)pressNewButton:(id)sender;

-(IBAction)pressItemButton:(id)sender;

@end

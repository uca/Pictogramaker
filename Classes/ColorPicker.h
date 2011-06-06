//
//  ColorPicker.h
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TouchesDelegate.h"

@interface ColorPicker : UIView {
	//dragPoint
	CGPoint startLocation;
	
	id<TouchesDelegate> delegate;
}

@property (nonatomic, retain) id delegate;

@end

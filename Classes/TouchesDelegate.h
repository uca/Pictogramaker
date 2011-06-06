//
//  TouchesDelegate.h
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol TouchesDelegate


@optional
- (void)view:(UIView*)view touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event;
- (void)view:(UIView*)view touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event;
- (void)view:(UIView*)view touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event;
- (void)view:(UIView*)view touchesCancelled:(NSSet*)touches withEvent:(UIEvent*)event;

@end
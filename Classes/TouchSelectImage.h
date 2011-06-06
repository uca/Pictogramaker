//
//  TouchSelectImage.h
//  Pictogramaker
//
//  Created by Yuka.K on 11/05/14.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorSelect.h"

@interface TouchSelectImage : UIImageView {
	//IBにてFile'sOwnerと紐づけている
	IBOutlet ColorSelect* colorSelect_;
}


@end

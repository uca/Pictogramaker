//
//  SearchPict.h
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchListItemTable.h"

@interface SearchPict : UIViewController {
	IBOutlet SearchListItemTable *searchList;
	//IBOutlet UITableView *searchList;
}

@property(nonatomic, retain) SearchListItemTable *searchList;

@end

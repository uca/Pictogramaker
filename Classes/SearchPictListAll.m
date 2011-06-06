//
//  SearchPictListAll.m
//  Pictogramaker
//
//  Created by Yuka.K on 11/05/14.
//  Copyright 2011 none. All rights reserved.
//

#import "SearchPictListAll.h"
#import "SearchPictList.h"


@implementation SearchPictListAll


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}



#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 7;
}



// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	NSString *strImage; 
	
  	if (indexPath.row == 0) {
		cell.textLabel.text = @"Public Facilities";
		strImage = [NSString stringWithFormat:@"%d.gif", 19];
	}else if (indexPath.row == 1) {
		cell.textLabel.text = @"Transport Facilities";
		strImage = [NSString stringWithFormat:@"%d.gif", 40];
	}else if (indexPath.row == 2){
		cell.textLabel.text = @"Commerical Facilities";
		strImage = [NSString stringWithFormat:@"%d.gif", 57];
	}else if (indexPath.row == 3){
		cell.textLabel.text = @"Tourism,Culture,Sports Facilities";	
		strImage = [NSString stringWithFormat:@"%d.gif", 71];
	}else if (indexPath.row == 4){
		cell.textLabel.text = @"Safety";	
		strImage = [NSString stringWithFormat:@"%d.gif", 86];
	}else if (indexPath.row == 5){
		cell.textLabel.text = @"Prohibition";	
		strImage = [NSString stringWithFormat:@"%d.gif", 92];
	}else if (indexPath.row == 6){
		cell.textLabel.text = @"Warning";	
		strImage = [NSString stringWithFormat:@"%d.gif", 112];
	}else if (indexPath.row == 7){
		cell.textLabel.text = @"Mandatory";	
		strImage = [NSString stringWithFormat:@"%d.gif", 120];
	}else {
		cell.textLabel.text = @"None!";	
		strImage = [NSString stringWithFormat:@"%d.gif", 1];
	}	
	
	//NSLog(strImage);
	if (indexPath.row <= 7 ) {
		cell.imageView.image = [UIImage imageNamed:strImage];
	}else{
		cell.imageView.image = [UIImage imageNamed:@"Human.jpg"];
	}
    
    return cell;
	
}


// セルの高さを設定（浮動小数点で指定）
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
	return 50.0f;
}

#pragma mark -
#pragma mark Table view delegate

//rowが選択されたときのメソッド
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	SearchPictList *searchPictView = [[SearchPictList alloc] initWithNibName:@"SearchPictList" bundle:nil];
    
	//NSString *strSelectRow = [NSString stringWithFormat:@"%d.jpg", indexPath.row + 1];
	
	/*
	if (indexPath.row <= 7) {
		NSInteger intT = indexPath.row;
		searchPictView.intSelectRow = intT;
		//searchPictView.intSelectRow = indexPath.row;
	}else{
		searchPictView.intSelectRow = -1;
	}
	*/
	[self.navigationController pushViewController:searchPictView animated:YES];
	[searchPictView release];
	
}



#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end


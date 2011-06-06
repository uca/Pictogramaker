//
//  SearchPictList.m
//  Pictogramaker
//
//  Created by Yuka.K on 11/05/14.
//  Copyright 2011 none. All rights reserved.
//

#import "SearchPictList.h"


@implementation SearchPictList
@synthesize intSelectRow = intSelectRow_;

#pragma mark -
#pragma mark View lifecycle

int intStartNo;


- (void)viewDidLoad {
    [super viewDidLoad];
}



#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 5;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	//選択した行によって表示ファイルを設定
	//intStartNo = 40;
	self.intSelectRow = 1;
	if (self.intSelectRow == 0) {
		intStartNo = 1;
	}else if (self.intSelectRow == 1){
		intStartNo = 40;
	}else if (self.intSelectRow == 2){
		intStartNo = 57;
	}else if (self.intSelectRow == 3){
		intStartNo = 67;
	}else if (self.intSelectRow == 4){
		intStartNo = 86;
	}else if (self.intSelectRow == 5){
		intStartNo = 91;
	}else if (self.intSelectRow == 6){
		intStartNo = 112;
	}else if (self.intSelectRow == 7){
		intStartNo = 120;
	}
	
	NSString *strImage = [NSString stringWithFormat:@"%d.gif", intStartNo + indexPath.row];
	cell.imageView.image = [UIImage imageNamed:strImage];
	
	
	if (indexPath.row == 0) {
		cell.textLabel.text = @"All";
	}else if (indexPath.row == 1) {
		cell.textLabel.text = @"Tom Yorke";
	}else if (indexPath.row == 2){
		cell.textLabel.text = @"IN RAINBOWS";	
	}else {
		cell.textLabel.text = @"None!";	
	}	
	    
    return cell;
}



#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    /*
   // <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
    // ...
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    */
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
	[self.intSelectRow release];
}


@end


//
//  SearchListItemTable.m
//  Pictogramaker
//
//  Created by Yuka.K on 11/05/14.
//  Copyright 2011 none. All rights reserved.
//

#import "SearchListItemTable.h"


@implementation SearchListItemTable


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 8;
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


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

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

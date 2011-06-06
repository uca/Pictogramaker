//
//  PictItemList.m
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import "PictItemList.h"


@implementation PictItemList


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
	//TableViewのタイトル行を設定
	self.title = @"Pictogram";
}


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 23;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	if (indexPath.row == 0) {
		cell.textLabel.text = @"airplane";
	}else if (indexPath.row == 1) {
		cell.textLabel.text = @"cigarette";
	}else if (indexPath.row == 2){
		cell.textLabel.text = @"restaurant";	
	}else if (indexPath.row == 3){
		cell.textLabel.text = @"man";	
	}else if (indexPath.row == 4){
		cell.textLabel.text = @"woman";	
	}else if (indexPath.row == 5){
		cell.textLabel.text = @"stop";	
	}else if (indexPath.row == 6){
		cell.textLabel.text = @"NoDog";	
	}else if (indexPath.row == 7){
		cell.textLabel.text = @"medical";	
	}else if (indexPath.row == 8){
		cell.textLabel.text = @"arrow";	
	}else {
		cell.textLabel.text = @"None!";	
	}	
	
	//TableViewの各セルのアイコンを表示
	//次画面のImageViewControllerにfilename変数を使って画像ファイル名を受け渡す
	NSString *strImage = [NSString stringWithFormat:@"shape%d.png", indexPath.row + 1];
	//NSLog(strImage);
	if (indexPath.row <= 23 ) {
		cell.imageView.image = [UIImage imageNamed:strImage];
	}else{
		cell.imageView.image = [UIImage imageNamed:@"Human.jpg"];
	}
	
	
    return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    /*
	 
	 
	 //親のUIViewControllerに対してselectIndexプロパティを作成して、値をセットした後に画面遷移
	 parentViewController.selectIndex = indexPath.row;
	 
	 
	 
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
    
	[self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
	 
	 
    */
}

// セルの高さを設定（浮動小数点で指定）
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
	return 60.0f;
}

//Display装飾
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell 
forRowAtIndexPath:(NSIndexPath *)indexPath{
	if (indexPath.row % 2 == 0){
		cell.backgroundColor = [UIColor colorWithHue:0.80
										  saturation:0.09
										  brightness:0.99
											   alpha:1.0];
		
		//cell.textLabel.textColor = [UIColor redColor];
		
	}
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


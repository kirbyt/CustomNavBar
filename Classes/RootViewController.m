//
//  RootViewController.m
//  CustomNavBar
//
//  Created by Kirby Turner on 9/11/10.
//  Copyright White Peak Software Inc 2010. All rights reserved.
//

#import "RootViewController.h"
#import "AnotherViewController.h"


@implementation RootViewController


#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad 
{
   [super viewDidLoad];
   
   [self setTitle:@"Sample App"];

   UIColor *aColor = [UIColor colorWithRed:0.624 green:0.260 blue:0.556 alpha:1.000];
   UINavigationBar *bar = [[self navigationController] navigationBar];
   [bar setTintColor:aColor];

   UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithTitle:@"Touch Me" style:UIBarButtonItemStylePlain target:self action:@selector(touchMe)];
   [[self navigationItem] setRightBarButtonItem:button];
   [button release];
}

- (void)touchMe
{
   AnotherViewController *controller = [[AnotherViewController alloc] initWithNibName:@"AnotherView" bundle:nil];
   [self presentModalViewController:controller animated:YES];
   [controller release];
}


#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return 1;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
   
   static NSString *CellIdentifier = @"Cell";
   
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
   if (cell == nil) {
      cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
      [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
   }
   
	// Configure the cell.
   [[cell textLabel] setText:@"Touch me"];   
   
   return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
   [tableView deselectRowAtIndexPath:indexPath animated:YES];

   UIViewController *controller = [[UIViewController alloc] init];
   [controller setTitle:@"Title"];
   [[self navigationController] pushViewController:controller animated:YES];
   [controller release];
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning 
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload 
{
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc 
{
    [super dealloc];
}


@end


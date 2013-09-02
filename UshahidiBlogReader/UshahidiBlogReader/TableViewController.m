//
//  TableViewController.m
//  UshahidiBlogReader
//
//  Created by Lea Marolt on 9/1/13.
//  Copyright (c) 2013 Lea Marolt Sonnenschein. All rights reserved.
//

#import "TableViewController.h"
#import "Incident.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSURL *blogURL = [NSURL URLWithString:@"http://www.greatlakescommonsmap.org/api?task=incidents"];
    
    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
    
    NSError *error = nil;
    
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    NSLog(@"%@",dataDictionary);
    
    self.blogPosts = [NSMutableArray array];
    
    NSArray *blogPostArray = [[dataDictionary objectForKey:@"payload"] objectForKey:@"incidents"];
    
    for (NSDictionary *bpDictionary in blogPostArray) {
        
        Incident *incident = [Incident incidentWithTitle:[[bpDictionary objectForKey:@"incident"] objectForKey:@"incidenttitle"]];
        
        incident.locationName = [[bpDictionary objectForKey:@"incident"] objectForKey:@"locationname"];
        incident.thumbnail = [[[bpDictionary objectForKey:@"media"] objectAtIndex:0] objectForKey:@"thumb_url"];
        incident.date = [[bpDictionary objectForKey:@"incident"] objectForKey:@"incidentdate"];
        
        [self.blogPosts addObject:incident];
    }
    
    //    self.blogPosts = [[dataDictionary objectForKey:@"payload"] objectForKey:@"incidents"];
    
    //    NSDictionary *blogPost1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Title 1", @"title", @"Lea Marolt Sonnenschein", @"author", nil];
    //
    //    NSDictionary *blogPost2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Title 2", @"title", @"Joe Wlos", @"author", nil];
    //
    //    NSDictionary *blogPost3 = [NSDictionary dictionaryWithObjectsAndKeys:@"Title 3", @"title", @"Nediyana Daskalova", @"author", nil];
    //
    //    NSLog(@"%@", blogPost1);
    
    //    self.blogPosts = [[NSArray alloc] initWithObjects:blogPost1, blogPost2, blogPost3,
    //                   nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.blogPosts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Incident *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
    // Configure the cell...
    cell.textLabel.text = blogPost.incidentTitle;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", blogPost.locationName, blogPost.date];
    
    if ([blogPost.thumbnail isKindOfClass:[NSString class]]) {
        NSData *imageData = [NSData dataWithContentsOfURL:blogPost.thumbanilURL];
        UIImage *image = [UIImage imageWithData:imageData];
        cell.imageView.image = image;
    }
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end

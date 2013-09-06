//
//  FirstViewController.m
//  UshahidiBlogReader
//
//  Created by Lea Marolt on 9/5/13.
//  Copyright (c) 2013 Lea Marolt Sonnenschein. All rights reserved.
//

#import "TableViewController.h"
#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize textURL;
@synthesize enterURL;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enterButtonTapped:(id)sender {
    NSLog(@"textURL:%@", self.textURL.text);
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"toBlog"]) {
        
        /* ANOTHER WAY TO DO THIS:
         WebViewController *webView = (WebViewController *)segue.destinationViewController;
         webView.reportURL = incident.url; */
        TableViewController *tvc = segue.destinationViewController;
        tvc.ushahidiURL = self.textURL.text;
    }
}

@end

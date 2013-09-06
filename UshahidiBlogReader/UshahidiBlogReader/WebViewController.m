//
//  WebViewController.m
//  UshahidiBlogReader
//
//  Created by Lea Marolt on 9/5/13.
//  Copyright (c) 2013 Lea Marolt Sonnenschein. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

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
    /*NSURL *url = [NSURL URLWithString:@"http://stackoverflow.com/questions/510269/how-do-i-concatenate-strings"];*/
    
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:self.reportURL];
    [self.webView loadRequest:urlRequest];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

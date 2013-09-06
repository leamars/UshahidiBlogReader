//
//  WebViewController.h
//  UshahidiBlogReader
//
//  Created by Lea Marolt on 9/5/13.
//  Copyright (c) 2013 Lea Marolt Sonnenschein. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSURL *reportURL;

@end

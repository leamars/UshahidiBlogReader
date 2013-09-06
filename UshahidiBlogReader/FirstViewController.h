//
//  FirstViewController.h
//  UshahidiBlogReader
//
//  Created by Lea Marolt on 9/5/13.
//  Copyright (c) 2013 Lea Marolt Sonnenschein. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIButton *enterURL;
@property (strong, nonatomic) IBOutlet UITextField *textURL;

@end

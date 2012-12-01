//
//  ViewController.h
//  TemperatureConverter
//
//  Created by Matthew Erker on 11/27/12.
//  Copyright (c) 2012 Matthew Erker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong) IBOutlet UITextField *celsiusTextField;
@property (strong) IBOutlet UILabel *fahrenheitLabel;

@end

//
//  ViewController.m
//  TemperatureConverter
//
//  Created by Matthew Erker on 11/27/12.
//  Copyright (c) 2012 Matthew Erker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(BOOL)textFieldShouldReturn:(id)celsiusField {
    double celsius = [[celsiusField text] doubleValue];
    double fahrenheit = celsius * (9.0/5.0) + 32.0;
    self.fahrenheitLabel.text = [NSString stringWithFormat: @"%.0f", fahrenheit];
    return YES;
}

@end

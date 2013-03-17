//
//  TemperatureConverterTests.m
//  TemperatureConverterTests
//
//  Created by Matthew Erker on 11/27/12.
//  Copyright (c) 2012 Matthew Erker. All rights reserved.
//

#import "TemperatureConverterTests.h"

@implementation TemperatureConverterTests

- (void)setUp
{
    [super setUp];
    
    self.converterController = [[ViewController alloc] init];
    self.textField = [[FakeTextContainer alloc] init];
    self.fahrenheitLabel = [[FakeTextContainer alloc] init];
    self.converterController.celsiusTextField = (UITextField *)self.textField;
    self.converterController.fahrenheitLabel = (UILabel *)self.fahrenheitLabel;
}

-(void)testThatMinusFortyCelsiusIsMinusFortyFahrenheit {
    self.textField.text = @"-40";
    [self.converterController textFieldShouldReturn:self.textField];
    STAssertEqualObjects(self.fahrenheitLabel.text, @"-40", @"In both Celsius and Fahrenheit -40 is the same temperature");
}

@end

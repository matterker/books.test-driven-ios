//
//  TemperatureConverterTests.h
//  TemperatureConverterTests
//
//  Created by Matthew Erker on 11/27/12.
//  Copyright (c) 2012 Matthew Erker. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "FakeTextContainer.h"
#import "ViewController.h"

@interface TemperatureConverterTests : SenTestCase

@property (nonatomic, strong) FakeTextContainer *textField;
@property (nonatomic, strong) FakeTextContainer *fahrenheitLabel;
@property (nonatomic, strong) ViewController *converterController;

@end

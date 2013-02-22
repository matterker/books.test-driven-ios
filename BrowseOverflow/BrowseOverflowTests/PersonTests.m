//
//  PersonTests.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/21/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "PersonTests.h"
#import "Person.h"
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

@implementation PersonTests {
    NSString *name;
    NSString *location;
    Person *person;
}

- (void)setUp {
    name = @"Graham Lee";
    location = @"http://example.com/avatar.png";
    person = [[Person alloc] initWithName:name avatarLocation:location];
}

- (void)tearDown {
    person = nil;
}

- (void)testThatPersonHasTheRightName {
    assertThat(person.name, equalTo(name));
}

- (void)testThatPersonHasAnAvatarURL {
    assertThat([person.avatarURL absoluteString], equalTo(location));
}

@end

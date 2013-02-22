//
//  Person.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/21/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)name avatarLocation:(NSString *)avatarLocation {
    self = [super init];
    if (self) {
        self.name = [name copy];
        self.avatarURL = [[NSURL alloc] initWithString:avatarLocation];
    }
    return self;
}

@end

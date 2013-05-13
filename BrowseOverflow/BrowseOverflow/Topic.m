//
//  Topic.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 5/12/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "Topic.h"

@implementation Topic

-(id)initWithName:(NSString *)newName {
    if (self = [super init]) {
        _name = [newName copy];
    }
    return self;
}

@end

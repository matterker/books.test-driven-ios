//
//  Topic.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/8/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "Topic.h"

@implementation Topic

- (id)initWithName:(NSString *)name tag:(NSString *)tag {
    self = [super init];
    if (self) {
        self.name = [name copy];
        self.tag = [tag copy];
    }
    return self;
}

- (NSArray *)recentQuestions {
    return [NSArray array];
}

@end

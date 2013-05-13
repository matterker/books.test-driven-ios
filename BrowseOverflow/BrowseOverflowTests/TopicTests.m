//
//  TopicTests.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 5/12/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "TopicTests.h"
#import "Topic.h"

@implementation TopicTests

- (void)testThatTopicExists {
    Topic *newTopic = [[Topic alloc] init];
    STAssertNotNil(newTopic, @"shold be able to create a Topic instance");
}

@end

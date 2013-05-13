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

-(void)testThatTopicCanBeNamed {
    Topic *namedTopic = [[Topic alloc] initWithName: @"iPhone"];
    STAssertEqualObjects(namedTopic, @"iPhone", @"the Topic should have the same I gave it");
}

@end

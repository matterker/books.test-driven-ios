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

- (void)setUp {
    topic = [[Topic alloc] initWithName: @"iPhone" tag: @"iphone"];
}

- (void)tearDown {
    topic = nil;
}

- (void)testThatTopicExists {
    STAssertNotNil(topic, @"shold be able to create a Topic instance");
}

-(void)testThatTopicCanBeNamed {
    STAssertEqualObjects(topic.name, @"iPhone", @"the Topic should have the same I gave it");
}

-(void)testThatTopicHasATag {
    STAssertEqualObjects(topic.tag, @"iphone", @"Topics need to have tags");
}

@end

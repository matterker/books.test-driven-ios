//
//  TopicTests.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/4/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "TopicTests.h"
#import "Topic.h"
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

@implementation TopicTests {
    NSString *name;
    NSString *tag;
}

- (void)setUp {
    name = @"iPhone";
    tag = @"iphone";
    topic = [[Topic alloc] initWithName:name tag:tag];
}

- (void)tearDown {
    topic = nil;
}

- (void)testThatTopicExists {
    assertThat(topic, notNilValue());
}

- (void)testThatTopicCanBeNamed {
    assertThat(topic.name, equalTo(name));
}

- (void)testThatTopicHasATag {
    assertThat(topic.tag, equalTo(tag));
}

- (void)testForAListOfQuestions {
    assertThat([topic recentQuestions], instanceOf([NSArray class]));
}

- (void)testForInitiallyEmptyQuestionList {
    assertThat([topic recentQuestions], hasCountOf(0));
}

- (void)testAddingAQuestionToTheList {
    Question *question = [[Question alloc] init];
    [topic addQuestion: question];
    assertThat([topic recentQuestions], hasCountOf(1));
}

- (void)testQuestionsAreListedChronologically {
    Question *q1 = [[Question alloc] init];
    q1.date = [NSDate distantPast];
    Question *q2 = [[Question alloc] init];
    q2.date = [NSDate distantFuture];
    [topic addQuestion:q1];
    [topic addQuestion:q2];
    
    NSArray *questions = [topic recentQuestions];
    Question *listedFirst = [questions objectAtIndex:0];
    Question *listedSecond = [questions objectAtIndex:1];
    
    assertThat([listedFirst.date laterDate:listedSecond.date], equalTo(listedFirst.date));
}

- (void)testLimitOfTwentyQuestions {
    Question *q = [[Question alloc] init];
    for (NSInteger i = 0; i < 25; i++) {
        [topic addQuestion:q];
    }
    assertThat([NSNumber numberWithInt:[[topic recentQuestions] count]], lessThan([NSNumber numberWithInt:21]));
}

@end

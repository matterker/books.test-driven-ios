//
//  QuestionTests.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/21/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "QuestionTests.h"
#import "Question.h"
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

@implementation QuestionTests {
    NSString *title;
    int score;
    Question *question;
}

- (void)setUp {
    title = @"Do iPhones also dream of electric sheep?";
    question = [[Question alloc] init];
    question.date = [NSDate distantPast];
    question.title = title;
    question.score = score;
}

- (void)tearDown {
    question = nil;
}

- (void)testQuestionHasADate {
    NSDate *testDate = [NSDate distantPast];
    question.date = testDate;
    assertThat(question.date, instanceOf([NSDate class]));
}

- (void)testQuestionsKeepScore {
    assertThat([NSNumber numberWithInt:question.score], equalTo([NSNumber numberWithInt:score]));
}

- (void)testQuestionHasATitle {
    assertThat(question.title, equalTo(title));
}

@end

//
//  QuestionTests.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/21/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "QuestionTests.h"
#import "Question.h"

@implementation QuestionTests {
    Question *question;
}

- (void)setUp {
    question = [[Question alloc] init];
    question.date = [NSDate distantPast];
    question.title = @"Do iPhones also dream of electric sheep?";
    question.score = 42;
}

- (void)tearDown {
    question = nil;
}

- (void)testQuestionHasADate {
    NSDate *testDate = [NSDate distantPast];
    question.date = testDate;
    STAssertTrue([question.date isKindOfClass: [NSDate class]], @"Question needs to provide its date");
}

- (void)testQuestionsKeepScore {
    STAssertEquals(question.score, 42, @"Questions need a numeric score");
}

- (void)testQuestionHasATitle {
    STAssertEqualObjects(question.title, @"Do iPhones also dream of electric sheep?", @"Question should know its title");
}

@end

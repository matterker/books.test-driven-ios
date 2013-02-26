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
    Answer *lowScore;
    Answer *highScore;
}

- (void)setUp {
    title = @"Do iPhones also dream of electric sheep?";
    question = [[Question alloc] init];
    question.date = [NSDate distantPast];
    question.title = title;
    question.score = score;
    
    Answer *acceptedAnswer = [[Answer alloc] init];
    acceptedAnswer.score = 1;
    acceptedAnswer.accepted = YES;
    [question addAnswer: acceptedAnswer];
    
    lowScore = [[Answer alloc] init];
    lowScore.score = -4;
    [question addAnswer:lowScore];
    
    highScore = [[Answer alloc] init];
    highScore.score = 4;
    [question addAnswer:highScore];
}

- (void)tearDown {
    question = nil;
    lowScore = nil;
    highScore = nil;
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

- (void)testQuestionCanHaveAnswerAdded {
    Answer *myAnswer = [[Answer alloc] init];
    STAssertNoThrow([question addAnswer:myAnswer], @"should not throw exception");
}

- (void)testAcceptedAnswerIsFirst {
    assertThatBool([[question.answers objectAtIndex: 0] isAccepted], equalToBool(YES));
}

- (void)testHighScoreAnswerBeforeLow {
    NSArray *answers = question.answers;
    NSInteger highIndex = [answers indexOfObject:highScore];
    NSInteger lowIndex = [answers indexOfObject:lowScore];
    assertThat([NSNumber numberWithInt:highIndex], lessThan([NSNumber numberWithInt:lowIndex]));
}

@end

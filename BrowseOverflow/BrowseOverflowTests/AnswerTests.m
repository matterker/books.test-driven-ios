//
//  AnswerTests.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/25/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "AnswerTests.h"
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>
#import "Answer.h"
#import "Person.h"

@implementation AnswerTests {
    Answer *answer;
    NSString *text;
    NSString *personName;
    NSString *personAvatarLocation;
    int score;
    Answer *otherAnswer;
}

- (void)setUp {
    answer = [[Answer alloc] init];
    text = @"The answer is 42";
    personName = @"Graham Lee";
    personAvatarLocation = @"http://example.com/avatar.png";
    score = 42;
    answer.text = text;
    answer.person = [[Person alloc] initWithName:personName avatarLocation:personAvatarLocation];
    answer.score = score;
    otherAnswer = [[Answer alloc] init];
    otherAnswer.text = @"I have the answer you need";
    otherAnswer.score = 42;
}

- (void)tearDown {
    answer = nil;
}

- (void)testAnswerHasSomeText {
    assertThat(answer.text, equalTo(text));
}

- (void)testSomeoneProvidedTheAnswer {
    assertThat(answer.person, instanceOf([Person class]));
}

- (void)testAnswerNotAcceptedByDefault {
    assertThatBool(answer.accepted, equalToBool(NO));
}

- (void)testAnswerCanBeAccepted {
    STAssertNoThrow(answer.accepted = YES, @"should not throw exception");
}

- (void)testAnswerHasAScore {
    assertThatInt(answer.score, equalToInt(score));
}

- (void)testAcceptedAnswerComesBeforeUnaccepted {
    otherAnswer.accepted = YES;
    otherAnswer.score = answer.score;
    assertThatInt([answer compare: otherAnswer], equalToInt(NSOrderedDescending));
    assertThatInt([otherAnswer compare: answer], equalToInt(NSOrderedAscending));
}

- (void)testAnswersWithEqualScoresCompareEqually {
    assertThatInt([answer compare: otherAnswer], equalToInt(NSOrderedSame));
    assertThatInt([otherAnswer compare: answer], equalToInt(NSOrderedSame));
}

-(void)testLowerScoringAnswerComesAferHigher {
    otherAnswer.score = answer.score + 10;
    assertThatInt([answer compare:otherAnswer], equalToInt(NSOrderedDescending));
    assertThatInt([otherAnswer compare:answer], equalToInt(NSOrderedAscending));
}

@end

//
//  QuestionCreationTests.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/28/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "QuestionCreationTests.h"
#import "StackOverflowManager.h"
#import "MockStackOverflowManagerDelegate.h"
#import "MockStackOverflowCommunicator.h"
#import "Topic.h"
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

@implementation QuestionCreationTests {
@private StackOverflowManager *mgr;
}

- (void)setUp {
    mgr = [[StackOverflowManager alloc] init];
}

- (void)tearDown {
    mgr = nil;
}

- (void)testNonConformingObjectCannotBeDelegate {
    STAssertThrows(mgr.delegate = (id <StackOverflowManagerDelegate>)[NSNull null], @"NSNull should not be used as the delegate as it doesn't conform to the delegate protocol");
}

- (void)testConformingObjectCanBeDelegate {
    id <StackOverflowManagerDelegate> delegate = [[MockStackOverflowManagerDelegate alloc] init];
    STAssertNoThrow(mgr.delegate = delegate, @"Object conforming to the delegate protocol should be used as the delegate");
}

- (void)testManagerAcceptsNilAsADelegate {
    STAssertNoThrow(mgr.delegate = nil, @"It should be acceptable to use nil as an object's delegate");
}

- (void)testAskingForQuestionsMeansRequestingData {
    MockStackOverflowCommunicator * communicator = [[MockStackOverflowCommunicator alloc] init];
    mgr.communicator = communicator;
    Topic *topic = [[Topic alloc] initWithName:@"iPhone" tag:@"iphone"];
    [mgr fetchQuestionsOnTopic:topic];
    STAssertTrue([communicator wasAskedToFetchQuestions], @"The communicator should need to fetch data.");
}

- (void)testErrorReturnedToDelegateIsNotErrorNotifiedByCommunicator {
    MockStackOverflowManagerDelegate *delegate = [[MockStackOverflowManagerDelegate alloc] init];
    mgr.delegate = delegate;
    NSError *underlyingError = [NSError errorWithDomain:@"Test domain" code:0 userInfo:nil];
    [mgr searchingForQuestionsFailedWithError:underlyingError];
    STAssertFalse(underlyingError == [delegate fetchError], @"Error should be at the correct level of abstraction");
}

- (void)testErrorReturnedToDelegateDocumentsUnderlyingError {
    MockStackOverflowManagerDelegate *delegate = [[MockStackOverflowManagerDelegate alloc] init];
    mgr.delegate = delegate;
    NSError *underlyingError = [NSError errorWithDomain:@"Test domain" code:0 userInfo:nil];
    [mgr searchingForQuestionsFailedWithError: underlyingError];
    assertThat([[[delegate fetchError] userInfo] objectForKey: NSUnderlyingErrorKey], equalTo(underlyingError));
}

@end

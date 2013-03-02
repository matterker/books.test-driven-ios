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

@end

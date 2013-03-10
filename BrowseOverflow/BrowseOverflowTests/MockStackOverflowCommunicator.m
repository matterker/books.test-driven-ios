//
//  MockStackOverflowCommunicator.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 3/3/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "MockStackOverflowCommunicator.h"

@implementation MockStackOverflowCommunicator {
    BOOL wasAskedToFetchQuestions;
}

- (void)searchForQuestionsWithTag:(NSString *)tag {
    wasAskedToFetchQuestions = YES;
}

- (BOOL)wasAskedToFetchQuestions {
    return wasAskedToFetchQuestions;
}

@end

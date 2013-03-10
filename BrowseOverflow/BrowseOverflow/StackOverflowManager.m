//
//  StackOverflowManager.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/28/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "StackOverflowManager.h"

@implementation StackOverflowManager

- (void)setDelegate:(id<StackOverflowManagerDelegate>)delegate {
    if (delegate && ![delegate conformsToProtocol:@protocol(StackOverflowManagerDelegate)]) {
        [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Delegate object does not conform to the delegate protocol" userInfo:nil] raise];
    }
    _delegate = delegate;
}

- (void)fetchQuestionsOnTopic:(Topic *)topic {
    [self.communicator searchForQuestionsWithTag:[topic tag]];
}

- (void)searchingForQuestionsFailedWithError:(NSError *)error {
    NSDictionary *errorInfo = [NSDictionary dictionaryWithObject:error forKey:NSUnderlyingErrorKey];
    NSError *reportableError = [NSError
                                errorWithDomain:StackOverflowManagerError
                                           code:StackOverflowManagerErrorQuestionSearchCode
                                       userInfo:errorInfo];
    [self.delegate fetchingQuestionsOnTopic:nil failedWithError:reportableError];
}

@end

NSString *StackOverflowManagerError = @"StackOverflowManagerError";

//
//  StackOverflowManager.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/28/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowManagerDelegate.h"
#import "StackOverflowCommunicator.h"
#import "Topic.h"

@interface StackOverflowManager : NSObject

@property (nonatomic, weak) id<StackOverflowManagerDelegate> delegate;
@property (strong) StackOverflowCommunicator *communicator;

- (void)fetchQuestionsOnTopic:(Topic *)topic;
- (void)searchingForQuestionsFailedWithError:(NSError *)error;

@end

extern NSString * StackOverflowManagerError;

enum {
    StackOverflowManagerErrorQuestionSearchCode
};

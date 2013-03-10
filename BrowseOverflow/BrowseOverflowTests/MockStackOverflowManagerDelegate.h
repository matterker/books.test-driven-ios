//
//  MockStackOverflowManagerDelegate.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/28/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowManagerDelegate.h"
#import "Topic.h"

@interface MockStackOverflowManagerDelegate : NSObject <StackOverflowManagerDelegate>

@property (strong) NSError *fetchError;

- (void)fetchingQuestionsOnTopic:(Topic *)topic failedWithError:(NSError *)error;

@end

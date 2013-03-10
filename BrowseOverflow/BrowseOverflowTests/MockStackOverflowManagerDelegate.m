//
//  MockStackOverflowManagerDelegate.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/28/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "MockStackOverflowManagerDelegate.h"

@implementation MockStackOverflowManagerDelegate

- (void)fetchingQuestionsOnTopic:(Topic *)topic failedWithError:(NSError *)error {
    self.fetchError = error;
}

@end

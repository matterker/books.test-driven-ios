//
//  MockStackOverflowCommunicator.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 3/3/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowCommunicator.h"

@interface MockStackOverflowCommunicator : StackOverflowCommunicator

- (BOOL)wasAskedToFetchQuestions;

@end

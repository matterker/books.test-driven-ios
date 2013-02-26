//
//  Answer.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/25/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "Answer.h"

@implementation Answer

- (NSComparisonResult) compare: (Answer *)other {
    if (self.accepted && !(other.accepted)) {
        return NSOrderedAscending;
    }
    if (other.accepted && !(self.accepted)) {
        return NSOrderedDescending;
    }
    if (self.score > other.score) {
        return NSOrderedAscending;
    }
    if (other.score > self.score) {
        return NSOrderedDescending;
    }
    return NSOrderedSame;
}

@end

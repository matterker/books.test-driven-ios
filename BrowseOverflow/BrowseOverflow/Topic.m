//
//  Topic.m
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/8/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import "Topic.h"

@implementation Topic {
    NSArray *questions;
}

- (id)initWithName:(NSString *)name tag:(NSString *)tag {
    self = [super init];
    if (self) {
        self.name = [name copy];
        self.tag = [tag copy];
        questions = [[NSArray alloc] init];
    }
    return self;
}

- (NSArray *)sortQuestionsLatestFirst: (NSArray *)questionList {
    return [questionList sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        Question *q1 = (Question *)obj1;
        Question *q2 = (Question *)obj2;
        return [q2.date compare:q1.date];
    }];
}

- (NSArray *)recentQuestions {
    return [self sortQuestionsLatestFirst:questions];
}

- (void)addQuestion:(Question *)question {
    NSArray *newQuestions = [questions arrayByAddingObject:question];
    if ([newQuestions count] > 20) {
        newQuestions = [self sortQuestionsLatestFirst:newQuestions];
        newQuestions = [newQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
    questions = newQuestions;
}

@end

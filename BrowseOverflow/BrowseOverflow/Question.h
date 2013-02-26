//
//  Question.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/21/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Answer.h"

@interface Question : NSObject {
    NSMutableSet *answerSet;
}

@property (nonatomic, retain) NSDate *date;
@property (nonatomic, copy) NSString *title;
@property (nonatomic) NSInteger score;
@property (nonatomic, readonly) NSArray *answers;

- (void)addAnswer: (Answer*)answer;

@end

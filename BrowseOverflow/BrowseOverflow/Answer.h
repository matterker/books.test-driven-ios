//
//  Answer.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/25/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Answer : NSObject

@property (nonatomic) NSString *text;
@property (nonatomic) Person *person;
@property (nonatomic) int score;
@property (nonatomic, getter = isAccepted) BOOL accepted;

- (NSComparisonResult) compare: (Answer *)other;

@end

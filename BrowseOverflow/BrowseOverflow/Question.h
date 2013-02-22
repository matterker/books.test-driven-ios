//
//  Question.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/21/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSDate *date;
@property (nonatomic) NSString *title;
@property (nonatomic) int score;

@end

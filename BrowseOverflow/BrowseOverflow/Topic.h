//
//  Topic.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/8/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Topic : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *tag;

- (id)initWithName:(NSString *)name tag:(NSString *)tag;
- (NSArray *)recentQuestions;

@end

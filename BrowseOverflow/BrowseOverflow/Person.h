//
//  Person.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/21/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSURL *avatarURL;

- (id)initWithName:(NSString *)name avatarLocation:(NSString *)avatarLocation;

@end

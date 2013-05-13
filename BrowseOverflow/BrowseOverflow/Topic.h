//
//  Topic.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 5/12/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Topic : NSObject

@property (readonly) NSString *name;

-(id)initWithName:(NSString *)newName;

@end

//
//  StackOverflowManager.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/28/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowManagerDelegate.h"

@interface StackOverflowManager : NSObject

@property (nonatomic, weak) id<StackOverflowManagerDelegate> delegate;

@end

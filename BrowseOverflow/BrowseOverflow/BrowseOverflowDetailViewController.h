//
//  BrowseOverflowDetailViewController.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 2/3/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrowseOverflowDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

//
//  DetailViewController.h
//  BrowseOverflow
//
//  Created by Matthew Erker on 5/8/13.
//  Copyright (c) 2013 Order of Bits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

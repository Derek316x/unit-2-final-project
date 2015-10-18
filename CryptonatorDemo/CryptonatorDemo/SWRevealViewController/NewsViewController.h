//
//  NewsViewController.h
//  CryptonatorDemo
//
//  Created by Z on 10/13/15.
//  Copyright © 2015 dereknetto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (nonatomic) NSMutableArray *articles;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

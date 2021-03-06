//
//  NewsViewController.m
//  CryptonatorDemo
//
//  Created by Z on 10/13/15.
//  Copyright © 2015 dereknetto. All rights reserved.
//

#import "NewsViewController.h"
#import "SWRevealViewController.h"
#import <AFNetworking/AFNetworking.h>
#import "NYTArticle.h"

@interface NewsViewController ()

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //setup RevealViewController functionality
    if (self.revealViewController){
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector(revealToggle:)];
        [self.view addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    }
}

-(void)viewWillAppear:(BOOL)animated{
    animated = YES;
    [self getNYTNewsArticles];
}

-(void)getNYTNewsArticles{
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
    [manager GET:@"http://api.nytimes.com/svc/search/v2/articlesearch.json?q=bitcoin&sort=newest&fq=headline.search:(%E2%80%9Cbitcoin%E2%80%9D)&api-key=6f6473f77c32f533ec0e8c7ed0f81177:18:73240506" parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {

       NSDictionary *results = responseObject[@"response"][@"docs"];
        
        self.articles = [[NSMutableArray alloc] init];
        for (NSDictionary *result in results) {
            NYTArticle *article = [[NYTArticle alloc] init];
            article.headline = result[@"headline"][@"main"];
            article.url = result[@"web_url"];
            [self.articles addObject:article];
        }
        
    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
    }];
}

@end

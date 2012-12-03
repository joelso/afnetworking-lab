//
//  ArtWorkViewController.m
//  AFNetworkingLab
//
//  Created by Åsa Persson on 2012-11-23.
//  Copyright (c) 2012 Frost Digital. All rights reserved.
//

#import "ArtWorkViewController.h"
#import "TraktAPIClient.h"
#import <AFNetworking.h>
#import "ArtWork.h"

@interface ArtWorkViewController ()
{
    NSArray *jsonResponse;
    ArtWork *artWork;
}
@end

@implementation ArtWorkViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 1 - Create trakt API client
    TraktAPIClient* client = [TraktAPIClient sharedClient];
    
    // 4 - Create API query request    
    NSString* path = [NSString stringWithFormat:@"%@", SCARFURLString];
    
    NSURLRequest* request = [client requestWithMethod:@"GET" path:path parameters:nil];

    // 5 - Create JSON request operation
    AFJSONRequestOperation* operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON)
                                         {
                                             jsonResponse = JSON;
                                            
                                             for (NSDictionary* art in jsonResponse)
                                             {
                                                 
                                                 artWork = [[ArtWork alloc] initWithTitle:[art objectForKey:@"title"]
                                                                               artistName:[art objectForKey:@"artistName"]
                                                                           mediumThumbUrl:@""
                                                                                    price:[[art valueForKey:@"price"] intValue]];
//                                                 [art objectForKey:@"artistName"];
//                                                  NSLog(@"Artister: %@", [art objectForKey:@"artistName"]);
                                             }

                                             
//                                             NSLog(@"Hämtat: %@", JSON);
                                             
                                         } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
                                             // 7 - Request failed block
                                         }];
    
    // 8 - Start request
    [operation start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

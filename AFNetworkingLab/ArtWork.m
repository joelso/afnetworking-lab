//
//  ArtWork.m
//  AFNetworkingLab
//
//  Created by Åsa Persson on 2012-11-23.
//  Copyright (c) 2012 Frost Digital. All rights reserved.
//

#import "ArtWork.h"

@implementation ArtWork

+(id)artWorkWithTitle:(NSString *)title artistName:(NSString *)artistName mediumThumbUrl:(NSString *)mediumThumbUrl price:(double)price
{
    return [[self alloc] initWithTitle:title artistName:artistName mediumThumbUrl:mediumThumbUrl price:price];
}

-(id)initWithTitle:(NSString *)title artistName:(NSString *)artistName mediumThumbUrl:(NSString *)mediumThumbUrl price:(double)price
{
    if (self = [super init]) {
        _title = title;
        _artistName = artistName;
        _mediumThumbUrl = mediumThumbUrl;
        _price = price;
    }
    
    NSLog(@" \nTitel: %@,  \n Namn: %@   \n Price: %0.2f", self.title, self.artistName, self.price);
    return self;
}

 -(id)init
{
    return [self initWithTitle:@"" artistName:@"" mediumThumbUrl:@"" price:0];
}
//+(id) userFromDictionary:(NSDictionary*) dictionary
//{
//    return [self userWithUsername:[dictionary valueForKey:@"username"]
//                         password:[dictionary valueForKey:@"password"]
//                        firstName:[dictionary valueForKey:@"firstName"]
//                         lastName:[dictionary valueForKey:@"lastName"]
//                         userType:[dictionary valueForKey:@"userType"]
//                           userID:[dictionary valueForKey:@"_id"]
//                          isAdmin:[dictionary valueForKey:@"isAdmin"]];
//}


@end

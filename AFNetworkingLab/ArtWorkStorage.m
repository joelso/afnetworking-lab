//
//  ArtWorkStorage.m
//  AFNetworkingLab
//
//  Created by Åsa Persson on 2012-11-23.
//  Copyright (c) 2012 Frost Digital. All rights reserved.
//

#import "ArtWorkStorage.h"

@implementation ArtWorkStorage
+(ArtWorkStorage *)sharedStorage
{
    static ArtWorkStorage *_sharedStorage = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedStorage = [[self alloc] init];
    });
    return _sharedStorage;
}
@end

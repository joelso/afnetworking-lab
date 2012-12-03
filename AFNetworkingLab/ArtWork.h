//
//  ArtWork.h
//  AFNetworkingLab
//
//  Created by Åsa Persson on 2012-11-23.
//  Copyright (c) 2012 Frost Digital. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArtWork : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy)NSString *artistName;
@property (nonatomic, copy) NSString *mediumThumbUrl;
@property (nonatomic) double price;

+(id) artWorkWithTitle:(NSString*) title artistName: (NSString*) artistName mediumThumbUrl:(NSString*) mediumThumbUrl price: (double) price;

-(id) initWithTitle:(NSString*) title artistName: (NSString*) artistName mediumThumbUrl:(NSString*) mediumThumbUrl price: (double) price;

@end 

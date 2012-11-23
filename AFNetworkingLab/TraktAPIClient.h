
#import <Foundation/Foundation.h>
#import <AFHTTPClient.h>

extern NSString * const kTraktAPIKey;
extern NSString * const kTraktBaseURLString;
extern NSString * const SCARFURLString;

@interface TraktAPIClient : AFHTTPClient

+(TraktAPIClient *)sharedClient;

@end
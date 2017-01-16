//
//  ATTGAHelper.m
//  Pods
//
//  Created by Sreekanth R on 16/01/17.
//
//

#import "ATTGAHelper.h"
#ifdef GA_EXISTS
    #import <GoogleAnalytics/GAI.h>
    #import <GoogleAnalytics/GAIFields.h>
    #import <GoogleAnalytics/GAIDictionaryBuilder.h>
#endif

@interface ATTGAHelper()

@property (copy, nonatomic) NSString *trackingID;

@end

@implementation ATTGAHelper

- (instancetype)initWithTrackingID:(NSString*)trackingID {
    if (self = [super init]) {
        _trackingID = trackingID;
    }
    
    return self;
}

- (void)sampleCall:(NSDictionary*)info {
    NSLog(@" === %@", info);
}

@end

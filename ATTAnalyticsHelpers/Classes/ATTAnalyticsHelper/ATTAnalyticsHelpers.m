//
//  ATTAnalyticsHelpers.m
//  Pods
//
//  Created by Sreekanth R on 06/01/17.
//
//

#import "ATTAnalyticsHelpers.h"
#import "ATTHelpersHeader.h"

@interface ATTAnalyticsHelpers()

@property (strong, nonatomic) NSDictionary *configurations;
@property (strong, nonatomic) ATTGAHelper *gaHelper;

@end

@implementation ATTAnalyticsHelpers

- (instancetype)initWithConfigurations:(NSDictionary*)configurations {
    if (self = [super init]) {
        _configurations = configurations;
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(trackedEventNotification:)
                                                     name:@"RegisterForTrakingNotification"
                                                   object:nil];
    }
    
    return self;
}

#pragma mark - Lazy instantiations
- (ATTGAHelper*)gaHelper {
    if (!_gaHelper) {
        _gaHelper = [[ATTGAHelper alloc] initWithTrackingID:@""];
    }
    
    return _gaHelper;
}

- (void)trackedEventNotification:(NSNotification*)notification {
    if ([notification userInfo]) {
        [self.gaHelper sampleCall:[notification userInfo]];
    }
}

@end

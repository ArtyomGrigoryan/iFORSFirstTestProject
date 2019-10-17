//
//  NetworkDataFetcher.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "../API/API.h"
#import "NetworkService.h"
#import "../../Model/Image.h"
#import "../API/APIParameters.h"
#import "../API/ServerResponse.h"

NS_ASSUME_NONNULL_BEGIN

@interface NetworkDataFetcher : NSObject

- (id)initWithNetworkService:(NetworkService *)networkService;
- (void)getPhotosWithUserQuery:(NSString *)query page:(NSString *)page
                       success:(void(^)(NSMutableArray *))success
                       failure:(void(^)(NSError *))failure;

@end

NS_ASSUME_NONNULL_END

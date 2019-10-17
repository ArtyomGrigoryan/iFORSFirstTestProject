//
//  NetworkService.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "../API/API.h"

NS_ASSUME_NONNULL_BEGIN

@interface NetworkService : NSObject

- (void)requestWithPath:(NSString *)path
                 params:(NSMutableDictionary *)params
                success:(void(^)(NSData *))success
                failure:(void(^)(NSError *))failure;

@end

NS_ASSUME_NONNULL_END

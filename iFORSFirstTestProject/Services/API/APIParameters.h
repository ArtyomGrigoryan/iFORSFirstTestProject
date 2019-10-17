//
//  APIParameters.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface APIParameters : NSObject

+ (NSString *)query;
+ (NSString *)page;
+ (NSString *)perPage;
+ (NSString *)clientId;

@end

NS_ASSUME_NONNULL_END

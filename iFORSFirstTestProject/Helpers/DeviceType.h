//
//  DeviceType.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 17.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "ScreenSize.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeviceType : NSObject

+ (bool)iPhoneSE;
+ (bool)iPhone8;
+ (bool)iPhone8Plus;
+ (bool)iPhoneXrAndiPhoneXsMax;
+ (bool)iPhoneXs;

@end

NS_ASSUME_NONNULL_END

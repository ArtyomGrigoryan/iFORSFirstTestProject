//
//  DeviceType.m
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 17.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "DeviceType.h"

@implementation DeviceType

+ (bool)iPhoneSE {
    return ScreenSize.screenMaxLength == 568.0;
}

+ (bool)iPhone8 {
    return ScreenSize.screenMaxLength == 667.0;
}

+ (bool)iPhone8Plus {
    return ScreenSize.screenMaxLength == 736.0;
}

+ (bool)iPhoneXrAndiPhoneXsMax {
    return ScreenSize.screenMaxLength == 896.0;
}

+ (bool)iPhoneXs {
    return ScreenSize.screenMaxLength == 812.0;
}

@end

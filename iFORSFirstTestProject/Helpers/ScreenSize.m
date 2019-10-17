//
//  ScreenSize.m
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 17.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "ScreenSize.h"

@implementation ScreenSize

+ (CGFloat)screenWidth {
    return [[UIScreen mainScreen] bounds].size.width;
}

+ (CGFloat)screenHeight {
    return [[UIScreen mainScreen] bounds].size.height;
}

+ (CGFloat)screenMaxLength {
    return MAX(ScreenSize.screenWidth, ScreenSize.screenHeight);
}

@end

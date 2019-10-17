//
//  ScreenSize.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 17.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScreenSize : NSObject

+ (CGFloat)screenWidth;
+ (CGFloat)screenHeight;
+ (CGFloat)screenMaxLength;

@end

NS_ASSUME_NONNULL_END

//
//  AppDelegate.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "./View/Custom Views/TabBarViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) TabBarViewController *tabBarViewController;

@end


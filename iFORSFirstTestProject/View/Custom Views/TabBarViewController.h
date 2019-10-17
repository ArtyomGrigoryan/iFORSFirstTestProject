//
//  TabBarViewController.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Controllers/PhotosListTableViewController.h"
#import "../Controllers/UserInfoViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TabBarViewController : UITabBarController

@property (strong, nonatomic) PhotosListTableViewController *photosListTableViewController;
@property (strong, nonatomic) UserInfoViewController *userInfoViewController;

@end

NS_ASSUME_NONNULL_END

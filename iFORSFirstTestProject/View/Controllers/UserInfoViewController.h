//
//  UserInfoViewController.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../../Helpers/DeviceType.h"
#import "../Custom Views/CustomUIToolbar.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserInfoViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UITextView *lastNameTextView;
@property (strong, nonatomic) UITextView *firstNameTextView;
@property (strong, nonatomic) UITextView *middleNameTextView;
@property (weak, nonatomic) UITextView *activeTextView;

@end

NS_ASSUME_NONNULL_END

//
//  UserInfoViewController.m
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "UserInfoViewController.h"

@interface UserInfoViewController () {
    float h;
}

@end

@implementation UserInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    SEL hideKeyboard = sel_registerName("hideKeyboard");
    
    CustomUIToolbar *toolbar = [[CustomUIToolbar alloc] initWithSelector:hideKeyboard];

    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x,
                                                                 self.view.frame.origin.y,
                                                                 self.view.frame.size.width,
                                                                 self.view.frame.size.height)];
    
    if (DeviceType.iPhoneXrAndiPhoneXsMax) {
        h = -1.17;
    } else if (DeviceType.iPhoneXs) {
        h = -1.0;
    } else if (DeviceType.iPhone8Plus) {
        h = 0.1;
    } else if (DeviceType.iPhoneSE) {
        h = 1.0;
    } else if (DeviceType.iPhone8) {
        h = 0.3;
    }

    _scrollView.userInteractionEnabled = YES;
    [_scrollView setScrollEnabled:YES];
    
    [self.view addSubview:_scrollView];

    _scrollView.translatesAutoresizingMaskIntoConstraints = false;
    [_scrollView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [_scrollView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [_scrollView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [_scrollView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(_scrollView.frame.origin.x,
                                                                   _scrollView.frame.origin.y,
                                                                   _scrollView.frame.size.width,
                                                                   _scrollView.frame.size.height)];
    
    // lastNameTextView
    _lastNameTextView = [[UITextView alloc] init];
    _lastNameTextView.backgroundColor = [UIColor blueColor];
    [_lastNameTextView.heightAnchor constraintEqualToConstant:60].active = true;
    [_lastNameTextView.widthAnchor constraintEqualToConstant:300].active = true;

    // firstNameTextView
    _firstNameTextView = [[UITextView alloc] init];
    _firstNameTextView.backgroundColor = [UIColor greenColor];
    [_firstNameTextView.heightAnchor constraintEqualToConstant:60].active = true;
    [_firstNameTextView.widthAnchor constraintEqualToConstant:300].active = true;

    // middleNameTextView
    _middleNameTextView = [[UITextView alloc] init];
    _middleNameTextView.backgroundColor = [UIColor magentaColor];
    [_middleNameTextView.heightAnchor constraintEqualToConstant:60].active = true;
    [_middleNameTextView.widthAnchor constraintEqualToConstant:300].active = true;

    _lastNameTextView.delegate = self;
    _firstNameTextView.delegate = self;
    _middleNameTextView.delegate = self;
    
    _lastNameTextView.inputAccessoryView = toolbar;
    _firstNameTextView.inputAccessoryView = toolbar;
    _middleNameTextView.inputAccessoryView = toolbar;
    
    // UIStackView
    UIStackView *stackView = [[UIStackView alloc] init];

    stackView.axis = UILayoutConstraintAxisVertical;
    stackView.distribution = UIStackViewDistributionEqualCentering;
    stackView.alignment = UIStackViewAlignmentCenter;
    stackView.spacing = 50;

    [stackView addArrangedSubview:_lastNameTextView];
    [stackView addArrangedSubview:_firstNameTextView];
    [stackView addArrangedSubview:_middleNameTextView];
    
    [contentView addSubview:stackView];
    [_scrollView addSubview:contentView];
    
    [contentView.centerXAnchor constraintEqualToAnchor:_scrollView.centerXAnchor].active = YES;
    [contentView.centerYAnchor constraintEqualToAnchor:_scrollView.centerYAnchor].active = YES;
    [contentView.leadingAnchor constraintEqualToAnchor:_scrollView.leadingAnchor].active = YES;
    [contentView.trailingAnchor constraintEqualToAnchor:_scrollView.trailingAnchor].active = YES;
    [contentView.bottomAnchor constraintEqualToAnchor:_scrollView.bottomAnchor].active = YES;
    [contentView.topAnchor constraintEqualToAnchor:_scrollView.topAnchor].active = YES;
    
    stackView.translatesAutoresizingMaskIntoConstraints = false;

    [stackView.centerXAnchor constraintEqualToAnchor:contentView.centerXAnchor].active = YES;
    [stackView.leadingAnchor constraintEqualToAnchor:contentView.leadingAnchor constant:40].active = YES;
    [stackView.trailingAnchor constraintEqualToAnchor:contentView.trailingAnchor constant:-40].active = YES;
    [stackView.bottomAnchor constraintEqualToAnchor:contentView.bottomAnchor constant:-100].active = YES;
    [stackView.topAnchor constraintLessThanOrEqualToAnchor:contentView.bottomAnchor constant:367].active = YES;
}

- (void)viewDidAppear:(BOOL)animated {
    SEL kbDidShow = sel_registerName("kbDidShow:");
    SEL kbDidHide = sel_registerName("kbDidHide:");
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:kbDidShow name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:kbDidHide name:UIKeyboardDidHideNotification object:nil];
}

- (void)viewWillDisappear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidHideNotification object:nil];
}

#pragma mark - Keyboard

- (void)kbDidShow:(NSNotification *)notification {
    NSDictionary *info = [notification userInfo];
    CGRect kbRect = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbRect.size.height, 0.0);

    _scrollView.contentInset = contentInsets;
    _scrollView.scrollIndicatorInsets = contentInsets;

    CGPoint point = CGPointMake(0, _activeTextView.frame.origin.y - h * _activeTextView.frame.size.height);
    [_scrollView setContentOffset:point animated:YES];
    
    _scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
}

- (void)kbDidHide:(NSNotification *)notification {
    _scrollView.contentInset = UIEdgeInsetsZero;
    _scrollView.scrollIndicatorInsets = UIEdgeInsetsZero;
}

- (void)hideKeyboard {
    [self.view endEditing:YES];
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    _activeTextView = textView;
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    _activeTextView = nil;
}

@end

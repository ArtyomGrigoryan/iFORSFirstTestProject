//
//  TabBarViewController.m
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.photosListTableViewController = [[PhotosListTableViewController alloc] initWithNibName:nil bundle:NULL];
    self.userInfoViewController = [[UserInfoViewController alloc] initWithNibName:nil bundle:NULL];

    NSArray *viewControllersArray = [[NSArray alloc] initWithObjects: self.photosListTableViewController, self.userInfoViewController, nil];
    
    [self setViewControllers: viewControllersArray];
    
    self.photosListTableViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Фото" image:nil tag:0];
    self.userInfoViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"ФИО" image:nil tag:0];
}

@end

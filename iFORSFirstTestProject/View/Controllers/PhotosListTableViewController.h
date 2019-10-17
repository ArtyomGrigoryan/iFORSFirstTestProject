//
//  PhotosListTableViewController.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "../Cell/PhotosListTableViewCell.h"
#import "../../View Model/Controllers/PhotosListTableViewViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhotosListTableViewController : UITableViewController

@property (strong, nonatomic) PhotosListTableViewViewModel *photosListTableViewViewModel;

@end

NS_ASSUME_NONNULL_END

//
//  PhotosListTableViewCell.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Custom Views/WebImageView.h"
#import "../../View Model/Cell/PhotosListTableViewCellViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhotosListTableViewCell : UITableViewCell

@property (strong, nonatomic) WebImageView *webImageView;
- (void)configureCell:(PhotosListTableViewCellViewModel *)tableViewCellViewModel;

@end

NS_ASSUME_NONNULL_END

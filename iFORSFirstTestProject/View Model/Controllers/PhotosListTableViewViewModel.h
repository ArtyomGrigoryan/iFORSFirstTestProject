//
//  PhotosListTableViewViewModel.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 16.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import <UIKit/UIkit.h>
#import "../../Services/Network/NetworkDataFetcher.h"
#import "../Cell/PhotosListTableViewCellViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhotosListTableViewViewModel : NSObject

@property (strong, nonatomic) NSError *error;
@property (strong, nonatomic) NSString *userQuery;

- (NSInteger)numberOfItemsInSection;
- (id)initWithUserQuery:(NSString *)query;
- (void)fetchImages:(void(^)(void))success failure:(void(^)(void))failure;
- (PhotosListTableViewCellViewModel *)cellViewModelForIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END

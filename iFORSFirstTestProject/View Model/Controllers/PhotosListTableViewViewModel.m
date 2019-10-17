//
//  PhotosListTableViewViewModel.m
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 16.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "PhotosListTableViewViewModel.h"

@implementation PhotosListTableViewViewModel {
    NSMutableArray *images;
    NetworkDataFetcher *fetcher;
}

// В конструкторе проинициализируем переменные для работы с сетью
- (id)initWithUserQuery:(NSString *)query {
    if(self = [super init]) {
        _userQuery = query;
        NetworkService *networkService = [[NetworkService alloc] init];
        fetcher = [[NetworkDataFetcher alloc] initWithNetworkService:networkService];
    }
    return self;
}

// Качаем картинки по запросу, который хранится в переменной userQuery
- (void)fetchImages:(void (^)(void))success failure:(void (^)(void))failure {
    __weak __typeof(self)weakSelf = self;
    [fetcher getPhotosWithUserQuery:_userQuery page:@"1" success:^(NSMutableArray * _Nonnull data) {
        __typeof(self)strongSelf = weakSelf;
        if (strongSelf) {
            strongSelf->images = data;
            success();
        }
    } failure:^(NSError * _Nonnull error) {
        __typeof(self)strongSelf = weakSelf;
        if (strongSelf) {
            strongSelf->_error = error;
            failure();
        }
    }];
}

// Создаем view model для ячейки
- (PhotosListTableViewCellViewModel *)cellViewModelForIndexPath:(NSIndexPath *)indexPath {
    Image *image = self->images[indexPath.row];
    PhotosListTableViewCellViewModel *viewModel = [[PhotosListTableViewCellViewModel alloc] initWithImage:image];
    return viewModel;
}

// Сколько будет ячеек
- (NSInteger)numberOfItemsInSection {
    return (NSInteger) [self->images count];
}

@end

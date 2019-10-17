//
//  PhotosListTableViewCellViewModel.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 16.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "../../Model/Image.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhotosListTableViewCellViewModel : NSObject

- (NSString *)getImageSmallUrl;
- (id)initWithImage:(Image *)image;

@end

NS_ASSUME_NONNULL_END

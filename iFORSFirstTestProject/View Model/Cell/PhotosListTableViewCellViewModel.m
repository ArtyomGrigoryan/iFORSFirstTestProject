//
//  PhotosListTableViewCellViewModel.m
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 16.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "PhotosListTableViewCellViewModel.h"

@implementation PhotosListTableViewCellViewModel {
    Image *image;
}

- (id)initWithImage:(Image *)image {
    if(self = [super init]) {
        self->image = image;
    }
    return self;
}

- (NSString *)getImageSmallUrl {
    return self->image.small;
}

@end

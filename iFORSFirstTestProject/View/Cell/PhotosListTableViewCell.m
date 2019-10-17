//
//  PhotosListTableViewCell.m
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "PhotosListTableViewCell.h"

@implementation PhotosListTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.webImageView = [[WebImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        self.webImageView.translatesAutoresizingMaskIntoConstraints = NO;

        [self addSubview:_webImageView];
        [self.webImageView.topAnchor constraintEqualToAnchor:self.topAnchor constant:5].active = YES;
        [self.webImageView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-5].active = YES;
        [self.webImageView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:100].active = YES;
        [self.webImageView.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:-100].active = YES;
    }
    return self;
}

- (void)configureCell:(PhotosListTableViewCellViewModel *)tableViewCellViewModel {
    [_webImageView downloadImage:[tableViewCellViewModel getImageSmallUrl]];
}

@end

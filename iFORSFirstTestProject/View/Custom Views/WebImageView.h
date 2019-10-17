//
//  WebImageView.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WebImageView : UIImageView

- (void)downloadImage:(NSString *)imageURL;

@end

NS_ASSUME_NONNULL_END

//
//  WebImageView.m
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "WebImageView.h"

@implementation WebImageView

- (void)downloadImage:(NSString *)imageURL {
    NSURL *url = [NSURL URLWithString:imageURL];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionDataTask *task = [self createDataTaskWithSession:session url:url];
    
    [task resume];
}

- (NSURLSessionDataTask *)createDataTaskWithSession:(NSURLSession *)session url:(NSURL *)url {
    return [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.image = [UIImage imageWithData:data];
        });
    }];
}

@end

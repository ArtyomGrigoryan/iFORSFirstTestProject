//
//  Image.h
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "../Services/API/ServerResponse.h"

NS_ASSUME_NONNULL_BEGIN

@interface Image : NSObject

@property (strong, nonatomic) NSString *small;

- (id)initWithDictionary:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END

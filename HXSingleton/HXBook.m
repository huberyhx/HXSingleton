//
//  HXBook.m
//  HXSingleton
//
//  Created by hubery on 2017/7/10.
//  Copyright © 2017年 hubery. All rights reserved.
//

#import "HXBook.h"

@implementation HXBook
static HXBook *_book;

+ (instancetype)sharedBook
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _book = [[self alloc] init];
    });
    return _book;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _book = [super allocWithZone:zone];
    });
    return _book;
}

- (id)copyWithZone:(NSZone *)zone{
    return _book;
}
@end

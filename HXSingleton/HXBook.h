//
//  HXBook.h
//  HXSingleton
//
//  Created by hubery on 2017/7/10.
//  Copyright © 2017年 hubery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HXBook : NSObject
+ (instancetype)sharedBook;
@property(nonatomic,strong) NSString *name;
@end

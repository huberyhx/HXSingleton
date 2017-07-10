//
//  ViewController.m
//  HXSingleton
//
//  Created by hubery on 2017/7/10.
//  Copyright © 2017年 hubery. All rights reserved.
//

#import "ViewController.h"
#import "HXBook.h"
#import "HXPen.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HXBook *book1 = [[HXBook alloc]init];
    HXBook *book2 = [HXBook sharedBook];
    HXBook *book3 = [[HXBook alloc]init];
    NSLog(@"\n%p\n%p\n%p",book1,book2,book3);
    
    HXPen *pen1 = [[HXPen alloc]init];
    HXPen *pen2 = [HXPen sharedPen];
    HXPen *pen3 = [[HXPen alloc]init];
    NSLog(@"\n%p\n%p\n%p",pen1,pen2,pen3);
}


@end

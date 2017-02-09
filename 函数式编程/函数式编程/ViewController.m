//
//  ViewController.m
//  函数式编程
//
//  Created by tony on 17/2/8.
//  Copyright © 2017年 ZThink. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveCocoa.h"
static int a = 10;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ReactiveCocoa * rac = [[ReactiveCocoa alloc]init];
    BOOL isEqule = [[[rac caculator:^int(int result) {
        result += 2;
        result *= 5;
        return result;
    }]equle:^BOOL(int result) {
        NSLog(@"result=%d",result);
        return result == a;
    }] isEqual ];
    NSLog(@"%d",isEqule);
}


@end

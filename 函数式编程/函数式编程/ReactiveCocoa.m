//
//  ReactiveCocoa.m
//  函数式编程
//
//  Created by tony on 17/2/8.
//  Copyright © 2017年 ZThink. All rights reserved.
//

#import "ReactiveCocoa.h"

@implementation ReactiveCocoa
-(ReactiveCocoa *)caculator:(int(^)(int res))caculator{
    _result = caculator(_result);
    NSLog(@"_result=%d",_result);
    return self;
}
-(ReactiveCocoa *)equle:(BOOL(^)(int result))operation{
    _isEqual = operation(_result);
    return self;
}
@end

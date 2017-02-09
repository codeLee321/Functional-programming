//
//  ReactiveCocoa.h
//  函数式编程
//
//  Created by tony on 17/2/8.
//  Copyright © 2017年 ZThink. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReactiveCocoa : NSObject
@property(nonatomic,assign)BOOL  isEqual;
@property(nonatomic,assign)int  result;
-(ReactiveCocoa *)caculator:(int(^)(int res))caculator;
-(ReactiveCocoa *)equle:(BOOL(^)(int result))operation;
@end

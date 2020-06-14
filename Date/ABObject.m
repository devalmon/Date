//
//  ABObject.m
//  Date
//
//  Created by Alexey Baryshnikov on 25.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "ABObject.h"

@interface ABObject ()

@property (nonatomic, strong)NSTimer *timer;

@end

@implementation ABObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"obj is inited");
        
        __weak id weakSelf = self;
        
        _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:weakSelf selector:@selector(testTimer:) userInfo:nil repeats:YES];
//        [timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:5]];

    }
    return self;
}

- (void)testTimer: (NSTimer *)time {
    NSDateFormatter *dateFormatter = NSDateFormatter.new;
    [dateFormatter setDateFormat:@"HH:mm:ss:SSS"];
    NSLog(@"%@",[dateFormatter stringFromDate:[NSDate date]]);
}

- (void)dealloc
{
    
    NSLog(@"obj is deallocated");
    [self.timer invalidate];

}

@end

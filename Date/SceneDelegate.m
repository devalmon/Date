//
//  SceneDelegate.m
//  Date
//
//  Created by Alexey Baryshnikov on 25.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "SceneDelegate.h"
#import "ABObject.h"

@interface SceneDelegate ()

@property (nonatomic, strong)ABObject *obj;


@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    
    /*
    NSDateFormatter *dateFormatter = NSDateFormatter.new;
    
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:data]);

    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:data]);
    
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:data]);
    
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:data]);
    
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm"];
    NSLog(@"%@", [dateFormatter stringFromDate:data]);
    
    NSDate *date2 = [dateFormatter dateFromString:@"2020/11/23 21:23"];
    NSLog(@"%@", date2);
    */
    /*
    NSDate *date1 = [NSDate date];
    NSDate *date2 = [NSDate dateWithTimeIntervalSinceNow:1000000];
    
    NSCalendar *calend = [NSCalendar currentCalendar];
    
    NSDateComponents *components = [calend components:NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute fromDate:date1 toDate:date2 options:0];
    NSLog(@"%@\n%@\n%@",date1, date2, components);
     
     */
    
    self.obj = [[ABObject alloc]init];
    
    
    [NSTimer scheduledTimerWithTimeInterval:4 target:_obj selector:@selector(deleteTimer) userInfo:nil repeats:nil];
    
    
}

- (void)deleteTimer {
    NSLog(@"deleteTimer");
    self.obj = nil;
}



- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end

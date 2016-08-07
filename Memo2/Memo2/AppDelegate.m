//
//  AppDelegate.m
//  Memo2
//
//  Created by yonghwankim's macbook on 8/7/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSMutableArray *memoListArray = [[NSMutableArray alloc] init];
    self.memoListArray = memoListArray;
    
    NSString *docDir;
    NSArray *dirPaths;
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    docDir = [dirPaths objectAtIndex:0];
    filePath = [[NSString alloc] initWithString:[docDir stringByAppendingPathComponent:@"data.archive"]];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:filePath]) {
        NSArray *savedMemo = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
        self.memoListArray = [savedMemo mutableCopy];
    }
    self.memoIndex = -1;
    
    return YES;
}

- (void)saveData {
    
    NSArray *arrayToSave = [NSArray arrayWithArray:(NSArray *)self.memoListArray];
    if (![NSKeyedArchiver archiveRootObject:arrayToSave toFile:filePath]) {
        NSLog(@"fail to save");
    }else{
        NSLog(@"data saved");
    }
    
    arrayToSave = nil;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

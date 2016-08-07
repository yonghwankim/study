//
//  AppDelegate.h
//  Memo2
//
//  Created by yonghwankim's macbook on 8/6/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    NSString *filePath;
}

@property (nonatomic, strong) NSMutableArray *memoListArray;
@property (assign, readwrite) NSInteger memoIndex;
-(void) saveData;


@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end


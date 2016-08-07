//
//  AppDelegate.h
//  Memo2
//
//  Created by yonghwankim's macbook on 8/7/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    NSString *filePath;
}
@property (nonatomic, strong) NSMutableArray *memoListArray;
@property (assign, readwrite) NSInteger memoIndex;
- (void) saveData;


@property (strong, nonatomic) UIWindow *window;


@end


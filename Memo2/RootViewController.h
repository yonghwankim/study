//
//  RootViewController.h
//  Memo2
//
//  Created by yonghwankim's macbook on 8/7/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController
{
    NSString *dataFilePath;
}

@property (weak, nonatomic) IBOutlet UITextView *memo;
- (IBAction)save:(id)sender;

@end

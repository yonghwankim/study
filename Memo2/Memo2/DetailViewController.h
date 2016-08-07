//
//  DetailViewController.h
//  Memo2
//
//  Created by yonghwankim's macbook on 8/7/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@class Memo;

@interface DetailViewController : ViewController
{
    AppDelegate *appDelegate;
    Memo *currentMemo;
}

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextView *memo;

@end

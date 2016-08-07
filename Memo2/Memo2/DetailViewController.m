//
//  DetailViewController.m
//  Memo2
//
//  Created by yonghwankim's macbook on 8/7/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import "DetailViewController.h"
#import "Memo.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    appDelegate = [[UIApplication sharedApplication] delegate];
    if (appDelegate.memoIndex < -1) {
        currentMemo = [[appDelegate memoListArray] objectAtIndex:[appDelegate memoIndex]];
    }else{
        currentMemo = [[Memo alloc] init];
    }
    [self.titleField setText:[currentMemo title]];
    [self.memo setText:[currentMemo memoText]];
}


-(void)viewDidDisappear:(BOOL)animated {
    [currentMemo setTitle:[self.titleField text]];
    [currentMemo setMemoText:[self.memo text]];
    
    if ([appDelegate memoIndex] == -1) {
        [[appDelegate memoListArray] insertObject:<#(nonnull id)#> atIndex:0];
    }
    [appDelegate saveData];
    [appDelegate setMemoIndex:-1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

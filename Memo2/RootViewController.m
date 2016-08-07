//
//  RootViewController.m
//  Memo2
//
//  Created by yonghwankim's macbook on 8/7/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController
@synthesize memo;
@synthesize title;


- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *docsDir;
    NSArray *dirPaths;
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = [dirPaths objectAtIndex:0];
    dataFilePath = [[NSString alloc] initWithString:[docsDir stringByAppendingPathComponent:@"data.archive"]];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:dataFilePath]) {
        NSDictionary *dataDictionary;
        dataDictionary = [NSKeyedUnarchiver unarchiveObjectWithFile:dataFilePath];
        memo.text = [dataDictionary objectForKey:@"memo"];
        title.text = [dataDictionary objectForKey:@"title"];
//        NSString *memoData = [NSKeyedUnarchiver unarchiveObjectWithFile:dataFilePath];
//        memo.text = memoData;
    }
}

-(void)save:(id)sender {
    
    NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:title.text, @"title", memo.text, @"memo", nil];
    [NSKeyedArchiver archiveRootObject:dataDictionary toFile:dataFilePath];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([memo isFirstResponder]) {
        [memo resignFirstResponder];
    }
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

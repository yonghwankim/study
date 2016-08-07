//
//  Memo.h
//  Memo2
//
//  Created by yonghwankim's macbook on 8/7/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Memo : NSObject <NSCoding>

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *memoText;

@end

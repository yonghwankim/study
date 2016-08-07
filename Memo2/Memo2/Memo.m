//
//  Memo.m
//  Memo2
//
//  Created by yonghwankim's macbook on 8/7/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import "Memo.h"

@implementation Memo
@synthesize title, memoText;

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.memoText = [aDecoder decodeObjectForKey:@"memo"];      //설명에는 memoText가 아니라 memo로 돼있는데 작성자 실수인듯
    self.title = [aDecoder decodeObjectForKey:@"title"];
    
    return self;
}

-(instancetype)init {
    self  = [super init];
    if (self) {
        [self setTitle:@""];
        [self setMemoText:@""];
    }
    return self;
}
@end

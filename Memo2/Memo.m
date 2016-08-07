//
//  Memo.m
//  Memo2
//
//  Created by yonghwankim's macbook on 8/7/16.
//  Copyright © 2016 yonghwankim's macbook. All rights reserved.
//

#import "Memo.h"

@implementation Memo
@synthesize title, memoText;        //, 로 여러개 쓸 수도 있구나

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.memoText = [aDecoder decodeObjectForKey:@"memo"];
    self.title = [aDecoder decodeObjectForKey:@"title"];

    return self;
}


-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:title forKey:@"title"];
    [aCoder encodeObject:memoText forKey:@"memo"];
}

-(instancetype)init {
    self = [super init];
    
    if (self) {
        [self setTitle:@""];
        [self setMemoText:@""];
    }
    return self;
}

@end

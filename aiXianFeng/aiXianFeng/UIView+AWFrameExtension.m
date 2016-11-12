//
//  UIView+AWFrameExtension.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "UIView+AWFrameExtension.h"

@implementation UIView (AWFrameExtension)

- (CGFloat)with{

    return self.frame.size.width;
}

- (void)setWith:(CGFloat)with{
    
    CGRect frame=self.frame;
    frame.size.width=with;
    self.frame=frame;
}


- (CGFloat)height{

    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    
    CGRect frame=self.frame;
    frame.size.height=height;
    self.frame=frame;
}

- (CGFloat)x{

    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x{
    
    CGRect frame=self.frame;
    frame.origin.x=x;
    self.frame=frame;
}


- (CGFloat)y{
    
    return self.frame.origin.y;
}


- (void)setY:(CGFloat)y{

    CGRect frame=self.frame;
    frame.origin.y=y;
    self.frame=frame;
}

- (CGSize)size{

    return self.size;
}

- (void)setSize:(CGSize)size{

    CGRect frame= self.frame;
    frame.size=size;
    self.frame=frame;
}
@end

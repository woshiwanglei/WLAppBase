//
//  UIImage+WLImage.m
//  WLAppBase
//
//  Created by wanglei on 2017/10/31.
//  Copyright © 2017年 wanglei. All rights reserved.
//

#import "UIImage+WLImage.h"

@implementation UIImage (WLImage)

+ (UIImage *)originImageWithName: (NSString *)name {
    
    return [[UIImage imageNamed:name] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end

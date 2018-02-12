//
//  UIView+Extension.m
//  Tools
//
//  Created by dubhe on 2018/2/12.
//  Copyright © 2018年 Dubhe. All rights reserved.
//

#import "UIView+Extension.h"
#import <objc/runtime.h>

static void *hitTestSlopKey = &hitTestSlopKey;
@implementation UIView (Extension)

- (void)setHitTestSlop:(UIEdgeInsets)hitTestSlop {
    objc_setAssociatedObject(self, hitTestSlopKey, NSStringFromUIEdgeInsets(hitTestSlop), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIEdgeInsets)hitTestSlop {
    return UIEdgeInsetsFromString(objc_getAssociatedObject(self, hitTestSlopKey));
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    UIEdgeInsets slop = self.hitTestSlop;
    if (self && UIEdgeInsetsEqualToEdgeInsets(slop, UIEdgeInsetsZero)) {
        return CGRectContainsPoint(self.bounds, point);
    } else {
        return CGRectContainsPoint(UIEdgeInsetsInsetRect(self.bounds, slop), point);
    }
}

@end

//
//  UIView+Extension.h
//  Tools
//
//  Created by dubhe on 2018/2/12.
//  Copyright © 2018年 Dubhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

/**
 * @abstract Bounds insets for hit testing.
 * @discussion When set to a non-zero inset, increases the bounds for hit testing to make it easier to tap or perform
 * gestures on this node.  Default is UIEdgeInsetsZero.
 */
@property (nonatomic, assign) UIEdgeInsets hitTestSlop;

@end

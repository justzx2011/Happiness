//
//  faceview.h
//  Happiness
//
//  Created by xin zhang on 12-8-12.
//  Copyright (c) 2012年 xidian university. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface faceview : UIView

@property (nonatomic) CGFloat scale;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;
@end

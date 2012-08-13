//
//  faceview.h
//  Happiness
//
//  Created by xin zhang on 12-8-12.
//  Copyright (c) 2012年 xidian university. All rights reserved.
//

#import <UIKit/UIKit.h>


@class faceview;
@protocol FaceViewDataSource
- (float)smileForFaceView:(faceview *)sender;

@end

@interface faceview : UIView

@property (nonatomic) CGFloat scale;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;

@property (nonatomic , weak) IBOutlet id <FaceViewDataSource> dataSource;
@end

//
//  HappinessViewController.m
//  Happiness
//
//  Created by xin zhang on 12-8-12.
//  Copyright (c) 2012年 xidian university. All rights reserved.
//

#import "HappinessViewController.h"
#import "faceview.h"

@interface HappinessViewController()
@property (nonatomic,weak) IBOutlet faceview *faceview;
@end

@implementation HappinessViewController

@synthesize happiness = _happiness;
@synthesize faceview = _faceview;

- (void)setHappiness:(int)happiness
{
    _happiness = happiness;
    [self.faceview setNeedsDisplay];
}

-(void)setFaceview:(faceview *)faceview
{
    _faceview = faceview;
    [self.faceview addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.faceview action:@selector(pinch:)]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return  YES;
}
@end

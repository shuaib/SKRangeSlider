//
//  SKRangeSliderKnobLayer.h
//  SKRangeSlider
//
//  Created by Shuaib on 30/05/2014.
//  Copyright (c) 2014 Bytehood. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@class SKRangeSlider;

@interface SKRangeSliderKnobLayer : CALayer

@property BOOL highlighted;
@property (nonatomic, weak) SKRangeSlider *slider;

@end

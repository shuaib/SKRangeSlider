//
//  SKRangeSlider.h
//  SKRangeSlider
//
//  Created by Shuaib on 30/05/2014.
//  Copyright (c) 2014 Bytehood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKRangeSlider : UIControl

@property (nonatomic) CGFloat maximumValue;
@property (nonatomic) CGFloat minimumValue;
@property (nonatomic) CGFloat upperValue;
@property (nonatomic) CGFloat lowerValue;

@property (nonatomic) UIColor* trackColour;
@property (nonatomic) UIColor* trackHighlightColour;
@property (nonatomic) UIColor* knobColour;
@property (nonatomic) CGFloat curvaceousness;

- (float) positionForValue:(float)value;

@end

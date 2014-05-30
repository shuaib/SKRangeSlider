//
//  HomeVC.m
//  SKRangeSlider
//
//  Created by Shuaib on 30/05/2014.
//  Copyright (c) 2014 Bytehood. All rights reserved.
//

#import "HomeVC.h"
#import "SKRangeSlider.h"

@interface HomeVC ()

@end

@implementation HomeVC
{
    SKRangeSlider *_rangeSlider;
}

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSUInteger margin = 20;
    CGRect sliderFrame = CGRectMake(margin, margin, self.view.bounds.size.width - (margin*2), 30);
    _rangeSlider = [[SKRangeSlider alloc] initWithFrame:sliderFrame];
    
    [_rangeSlider addTarget:self action:@selector(slideValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_rangeSlider];
    
    //[self performSelector:@selector(updateState) withObject:nil afterDelay:1.0f];

}

- (void)updateState
{
    _rangeSlider.trackHighlightColour = [UIColor redColor];
    _rangeSlider.curvaceousness = 0.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 

- (void)slideValueChanged:(SKRangeSlider *)slider
{
    NSLog(@"Slider Values: %.2f,%.2f", slider.lowerValue, slider.upperValue);
}

@end

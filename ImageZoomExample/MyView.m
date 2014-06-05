//
//  MyView.m
//  ImageZoomExample
//
//  Created by Javier Panchi on 31/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "MyView.h"

@implementation MyView
@synthesize scale = _scale;

- (CGFloat)scale
{
    if (!_scale) _scale = 0.90;
    return _scale;
}

- (void)setScale:(CGFloat)scale
{
    _scale = scale;
    [self setNeedsDisplay];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                           cornerRadius:M_PI];
    [roundedRect addClip];
    [[UIColor whiteColor] setFill];
    UIRectFill(self.bounds);
    
    [[UIColor greenColor] setStroke];
    [roundedRect stroke];
    
    UIImage *faceImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@", @"image1"]];
    
    
    if (faceImage) {
        CGRect imageRect = CGRectInset(self.bounds,
                                       self.bounds.size.width * (1.0 - self.scale),
                                       self.bounds.size.height * (1.0 - self.scale));
        [faceImage drawInRect:imageRect];
    }
    
}

-(void)pinch:(UIPinchGestureRecognizer*) gesture{
    if ((gesture.state == UIGestureRecognizerStateChanged) ||
        (gesture.state == UIGestureRecognizerStateEnded)) {
        self.scale *= gesture.scale;
        gesture.scale = 1.0;
    }
}

@end

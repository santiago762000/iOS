//
//  ExampleView.m
//  DrawingTest
//
//  Created by Javier Panchi on 30/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ExampleView.h"

@implementation ExampleView
UIBezierPath *path;



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





// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
/*    path=[[UIBezierPath alloc] init];
    self.coordinates= @[[NSValue valueWithCGPoint:CGPointMake(75, 10)],[NSValue valueWithCGPoint:CGPointMake(160, 150)],[NSValue valueWithCGPoint:CGPointMake(90, 200)],[NSValue valueWithCGPoint:CGPointMake(45, 250)]];
    [path moveToPoint:[self.coordinates[0] CGPointValue]];
    for(int i=1;i<[self.coordinates count];i++){
        NSLog(@"%f",[self.coordinates[i] CGPointValue].x);
        path.lineWidth=5;
        [path addLineToPoint:[self.coordinates[i] CGPointValue]];
        
    }
    [path closePath];
    [[UIColor greenColor]setFill];
    [[UIColor blueColor]setStroke];
    [path fill];
    [path stroke];
    path.lineWidth=100;*/
    
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
//    path.lineWidth=gesture.scale*10;
  //  [self setNeedsDisplay];
    if ((gesture.state == UIGestureRecognizerStateChanged) ||
        (gesture.state == UIGestureRecognizerStateEnded)) {
        self.scale *= gesture.scale;
        gesture.scale = 1.0;
    }
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

@end

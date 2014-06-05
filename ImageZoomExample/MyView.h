//
//  MyView.h
//  ImageZoomExample
//
//  Created by Javier Panchi on 31/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyView : UIView
@property (nonatomic) CGFloat scale;
-(void)pinch:(UIPinchGestureRecognizer*) gesture;
@end

//
//  ExampleView.h
//  DrawingTest
//
//  Created by Javier Panchi on 30/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExampleView : UIView
@property(strong,nonatomic) NSArray *coordinates;
@property (nonatomic) CGFloat faceCardScaleFactor;
-(void)pinch:(UIPinchGestureRecognizer*) gesture;


@end

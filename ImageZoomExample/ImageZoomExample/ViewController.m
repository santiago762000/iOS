//
//  ViewController.m
//  ImageZoomExample
//
//  Created by Javier Panchi on 31/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.myView addGestureRecognizer:[[UIPinchGestureRecognizer alloc]initWithTarget:self.myView action:@selector(pinch:)]];

}


@end

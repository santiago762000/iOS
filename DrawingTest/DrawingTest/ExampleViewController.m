//
//  ExampleViewController.m
//  DrawingTest
//
//  Created by Javier Panchi on 30/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ExampleViewController.h"
#import "ExampleView.h"

@interface ExampleViewController ()
@property (weak, nonatomic) IBOutlet ExampleView *myView;

@end

@implementation ExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.myView addGestureRecognizer:[[UIPinchGestureRecognizer alloc]initWithTarget:self.myView action:@selector(pinch:)]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

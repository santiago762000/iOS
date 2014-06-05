//
//  ViewController.m
//  Borrar
//
//  Created by Javier Panchi on 4/06/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController


-(void)viewDidAppear:(BOOL)animated{
    [self.scrollView setContentSize:self.imageView.image.size];
}


@end

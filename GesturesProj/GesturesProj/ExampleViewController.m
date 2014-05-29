//
//  ExampleViewController.m
//  GesturesProj
//
//  Created by Javier Panchi on 29/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ExampleViewController.h"

@interface ExampleViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong,nonatomic)NSArray *imagesList;


@end

@implementation ExampleViewController

int ac=0;
- (void)viewDidLoad
{
    [super viewDidLoad];
	self.imagesList=[[NSArray alloc] initWithObjects:@"img1",@"img2",@"img3",@"img4",@"img5", nil];
    
}


- (IBAction)swipeToLeft:(UISwipeGestureRecognizer *)sender {

    if(ac>0)
        self.imageView1.image=[UIImage imageNamed:[self.imagesList objectAtIndex:--ac]];
    
}

- (IBAction)swipeToRight:(UISwipeGestureRecognizer *)sender {

    if(ac<[self.imagesList count]-1)
    self.imageView1.image=[UIImage imageNamed:[self.imagesList objectAtIndex:++ac]];

}

@end

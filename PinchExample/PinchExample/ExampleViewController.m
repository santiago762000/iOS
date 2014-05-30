//
//  ExampleViewController.m
//  PinchExample
//
//  Created by Javier Panchi on 29/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ExampleViewController.h"

@interface ExampleViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.view action:@selector(something)]];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)button1:(id)sender {
    self.myLabel.font=[self.myLabel.font fontWithSize:25];
}
- (IBAction)swipeRight:(id)sender {
    NSLog(@"%@",@"hello there");
}
-(void)something{
    NSLog(@"%@",@"hello there");
}

@end

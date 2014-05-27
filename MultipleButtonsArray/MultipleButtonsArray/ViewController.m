//
//  ViewController.m
//  MultipleButtonsArray
//
//  Created by Javier Panchi on 21/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonsArray;
@end

@implementation ViewController
@synthesize myLabel;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ShowLabelButton:(UIButton *)sender {
    myLabel.text=sender.currentTitle;
    
}
- (IBAction)assignValuesButton:(UIButton *)sender {
    int ac=0;
    for(UIButton *button in self.buttonsArray){
        [button setTitle:[@"Opt" stringByAppendingFormat:@"%d",++ac] forState:UIControlStateNormal];
    }
}

@end

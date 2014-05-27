//
//  ExampleViewController.m
//  PickerViewExample
//
//  Created by Javier Panchi on 22/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ExampleViewController.h"

@interface ExampleViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelResult;
@property(strong,nonatomic) NSArray *planets;
@end

@implementation ExampleViewController
@synthesize planets;
@synthesize labelResult;
- (void)viewDidLoad
{
    [super viewDidLoad];
    planets=@[@"Mercury",@"Venus",@"Earth",@"Mars",@"Jupiter",@"Saturn",@"Uranus",@"Neptune"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return planets.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    return planets[row];
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
    labelResult.text=[@"You seleted:" stringByAppendingString:planets[row]];
}



@end

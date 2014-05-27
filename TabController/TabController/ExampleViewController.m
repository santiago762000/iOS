//
//  ExampleViewController.m
//  TabController
//
//  Created by Javier Panchi on 27/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ExampleViewController.h"

@interface ExampleViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@end

@implementation ExampleViewController

- (IBAction)enteringData:(UITextField *)sender {
        self.name=self.nameTextField.text;
}


- (IBAction)dismissKeyboard:(id)sender {
    [self.nameTextField resignFirstResponder];
}

@end

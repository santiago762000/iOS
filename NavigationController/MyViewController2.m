//
//  MyViewController2.m
//  NavigationController
//
//  Created by Javier Panchi on 26/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "MyViewController2.h"

@interface MyViewController2 ()

@end

@implementation MyViewController2
- (IBAction)MyButtonTap:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end

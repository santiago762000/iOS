//
//  OtherVC.m
//  TabController
//
//  Created by Javier Panchi on 27/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "OtherVC.h"
#import "ExampleViewController.h"

@interface OtherVC ()
@property (weak, nonatomic) IBOutlet UILabel *myText;

@end

@implementation OtherVC


-(void)viewWillAppear:(BOOL)animated{

    ExampleViewController *exampleViewController = (ExampleViewController *)[self.tabBarController.viewControllers objectAtIndex:0];
    self.myText.text=exampleViewController.name;
}


@end

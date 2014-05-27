//
//  MyViewController1.m
//  NavigationController
//
//  Created by Javier Panchi on 26/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "MyViewController1.h"
#import "MyViewController2.h"

@interface MyViewController1 ()
@property (weak, nonatomic) IBOutlet UILabel *welcomeText;

@end

@implementation MyViewController1
@synthesize welcomeText;

-(void)setName:(NSString *)name{
    _name=name;
    if(self.view.window)
        welcomeText.text=[NSString stringWithFormat:@"Welcome %@",name];

}
-(void)viewWillAppear:(BOOL)animated{
    welcomeText.text=[NSString stringWithFormat:@"Welcome %@",_name];
}

@end

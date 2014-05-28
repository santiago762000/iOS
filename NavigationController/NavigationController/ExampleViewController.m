//
//  ExampleViewController.m
//  NavigationController
//
//  Created by Javier Panchi on 26/05/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ExampleViewController.h"
#import "MyViewController1.h"
#import "MyViewController2.h"

@interface ExampleViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@end

@implementation ExampleViewController


- (IBAction)myButton:(id)sender {
    if([[self.myTextField text] length]==0){
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message" message:@"You must enter a name" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];

    }else{
        [self performSegueWithIdentifier:@"toMyViewController1" sender:self];
    }
}

/*
 To go direcly to MyViewController2
 */
- (IBAction)jumpToViewController:(id)sender {
    MyViewController2 *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"myVC2"];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)dismissKeyboard:(id)sender {
    [self.myTextField resignFirstResponder];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"toMyViewController1"]){
        if([segue.destinationViewController isKindOfClass:[MyViewController1 class]]){
            MyViewController1 *vc=(MyViewController1*) segue.destinationViewController;
            vc.name=[self.myTextField text];
        }
    }
}

-(BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if([[self.myTextField text] length]==0 &&[identifier isEqualToString:@"toMyViewController1"]){
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message" message:@"You must enter a name" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
        return NO;
    }
    else
        return YES;
}
@end

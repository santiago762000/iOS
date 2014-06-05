//
//  ViewController.m
//  AnimationExample
//
//  Created by Javier Panchi on 2/06/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (strong, nonatomic) UIDynamicAnimator *animator;
@property(strong, nonatomic) UIGravityBehavior *gravity;
@property (strong, nonatomic) UICollisionBehavior *collider;

@end

@implementation ViewController

static const CGSize DROP_SIZE = { 40, 40 };

-(UIDynamicAnimator *)animator{
    if(!_animator){
        _animator=[[UIDynamicAnimator alloc]initWithReferenceView:self.myView];
    }
    return _animator;
}

-(UIGravityBehavior *)gravity{
    if(!_gravity){
        _gravity=[[UIGravityBehavior alloc] init];
        _gravity.magnitude=0.9;
        [self.animator addBehavior:_gravity];
        
    }
    return _gravity;
}

- (UICollisionBehavior *)collider
{
    if (!_collider) {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
        [self.animator addBehavior:_collider];
    }
    return _collider;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)tap:(UITapGestureRecognizer *)sender {
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROP_SIZE;
    int x = (arc4random() % (int)self.myView.bounds.size.width) / DROP_SIZE.width;
    frame.origin.x = x * DROP_SIZE.width;
    
    UIView *dropView = [[UIView alloc] initWithFrame:frame];
    dropView.backgroundColor = [UIColor blueColor];
    [self.myView addSubview:dropView];
    [self.gravity addItem:dropView];
    [self.collider addItem:dropView];
}


@end

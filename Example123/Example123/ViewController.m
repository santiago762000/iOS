//
//  ViewController.m
//  Example123
//
//  Created by Javier Panchi on 4/06/2014.
//  Copyright (c) 2014 Mighty-Ideas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.myScrollView.minimumZoomScale=0.2;
    self.myScrollView.maximumZoomScale=2.0;
    
    self.myScrollView.delegate=self;
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.myImageView;
}


- (IBAction)sendData:(UIButton *)sender {
    [self showImage:sender.tag];
}
- (IBAction)showMessage:(UIButton *)sender {
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Message" message:@"You can do something else" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

-(void)showImage:(NSInteger)index{
    [self.indicator startAnimating];
    self.indicator.hidden=NO;
    NSMutableArray *array=[[NSBundle mainBundle] objectForInfoDictionaryKey:@"Urls"];
    NSURL *URL = [NSURL URLWithString:[array objectAtIndex:index]];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration ephemeralSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request
                                                    completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
                                                        if (!error) {
                                                            if ([request.URL isEqual:URL]) {
                                                                UIImage *myImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
                                                                dispatch_async(dispatch_get_main_queue(), ^{
                                                                    self.myImageView.image = myImage;
                                                                    self.myScrollView.contentSize=self.myImageView.image.size;
                                                                    [self.indicator stopAnimating];
                                                                    self.indicator.hidden=YES;
                                                                    self.myScrollView.zoomScale=1.0;
                                                                });
                                                                //[self performSelectorOnMainThread:@selector(setImage:) withObject:image waitUntilDone:NO];
                                                            }
                                                        }
                                                    }];
    [task resume];
    
}

@end

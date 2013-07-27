//
//  ViewController.m
//  SliderTiempo
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    mySlider.transform = CGAffineTransformMakeRotation(270.0/180*M_PI);
    [mySlider setMinimumTrackTintColor:[UIColor greenColor]];
    [mySlider setMaximumTrackImage:[UIImage imageNamed:@"emptyimage"] forState:UIControlStateNormal];
    [mySlider setThumbImage:[UIImage imageNamed:@"emptyimage"] forState:UIControlStateNormal];
    [mySlider setThumbTintColor:nil];
    isPlaying = NO;
    myTimer = [NSTimer scheduledTimerWithTimeInterval:(0.001/1.0) target:self selector:@selector(gameOn) userInfo:nil repeats:YES];
	
}
-(IBAction)startTimer:(id)sender {
    
    if (isPlaying==NO) {
        isPlaying=YES;
        [mySlider setValue:0.0];
    } else {
        isPlaying=NO;
    }
}


-(void) gameOn {
    
    if (isPlaying == YES) {
        if (mySlider.value>0.7 && mySlider.value<1.0) {
            mySlider.value = mySlider.value +0.0001;
            [mySlider setMinimumTrackTintColor:[UIColor redColor]];
        } else if (mySlider.value<0.7) {
            mySlider.value = mySlider.value +0.0001;
            [mySlider setMinimumTrackTintColor:[UIColor greenColor]];
        } else {
            [mySlider setMinimumTrackTintColor:[UIColor blueColor]];
        }
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

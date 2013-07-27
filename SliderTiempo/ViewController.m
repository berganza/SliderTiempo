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

@synthesize slider, tiempo, funcionamiento;

- (void)viewDidLoad
{
    [super viewDidLoad];
    slider.transform = CGAffineTransformMakeRotation(270.0/180*M_PI);
    [slider setMinimumTrackTintColor:[UIColor greenColor]];
    [slider setMaximumTrackImage:[UIImage imageNamed:@"emptyimage"] forState:UIControlStateNormal];
    [slider setThumbImage:[UIImage imageNamed:@"emptyimage"] forState:UIControlStateNormal];
    [slider setThumbTintColor:nil];
    funcionamiento = NO;
    tiempo = [NSTimer scheduledTimerWithTimeInterval:(0.001/1.0) target:self selector:@selector(comenzar) userInfo:nil repeats:YES];
	
}
-(IBAction)iniciar:(id)sender {
    
    if (funcionamiento==NO) {
        funcionamiento=YES;
        [slider setValue:0.0];
    } else {
        funcionamiento=NO;
    }
}


-(void) comenzar {
    
    if (funcionamiento == YES) {
        if (slider.value>0.7 && slider.value<1.0) {
            slider.value = slider.value +0.0001;
            [slider setMinimumTrackTintColor:[UIColor redColor]];
        } else if (slider.value<0.7) {
            slider.value = slider.value +0.0001;
            [slider setMinimumTrackTintColor:[UIColor greenColor]];
        } else {
            [slider setMinimumTrackTintColor:[UIColor blueColor]];
        }
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

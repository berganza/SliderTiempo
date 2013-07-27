//
//  ViewController.h
//  SliderTiempo
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
    
@property (nonatomic, strong) IBOutlet UISlider * slider;
@property (nonatomic, strong) NSTimer * tiempo;
@property BOOL funcionamiento;

-(IBAction)iniciar:(id)sender;


@end

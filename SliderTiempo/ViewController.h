//
//  ViewController.h
//  SliderTiempo
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UISlider * mySlider;
    NSTimer * myTimer;
    BOOL isPlaying;
}

-(IBAction)startTimer:(id)sender;


@end

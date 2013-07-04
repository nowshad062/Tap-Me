//
//  ViewController.h
//  Tap Me
//
//  Created by Adil Nowshad on 7/1/13.
//  Copyright (c) 2013 Adil Nowshad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>{
    
    
    IBOutlet UILabel *scorelabel;
    IBOutlet UILabel *timerlabel;
    
    NSInteger count;
    NSInteger second;
    NSTimer *timer;
       
}
- (IBAction)buttonPressed;

@end

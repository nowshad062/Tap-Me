//
//  ViewController.m
//  Tap Me
//
//  Created by Adil Nowshad on 7/1/13.
//  Copyright (c) 2013 Adil Nowshad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    count++;
    
    scorelabel.text = [NSString stringWithFormat:@"score\n%i",count];
}

- (void)subtractTime {
    // 1
    second--;
    timerlabel.text = [NSString stringWithFormat:@"Time: %i",second];
    
    // 2
    if (second == 0) {
        [timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!"
                                                        message:[NSString stringWithFormat:@"You scored %i points", count]
                                                       delegate:self
                                              cancelButtonTitle:@"Play Again"
                                              otherButtonTitles:nil];
        
        [alert show];
    }
}

- (void)setupGame{
    second = 30;
    count = 0;
    
    // 2
    timerlabel.text = [NSString stringWithFormat:@"Time: %i", second];
    scorelabel.text = [NSString stringWithFormat:@"Score\n%i", count];
    
    // 3
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}

@end

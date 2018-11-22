//
//  ViewController.m
//  objectiveC
//
//  Created by amrpc on 11/13/18.
//  Copyright © 2018 amrpc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    {
        
        NSTimer *timer;
        int count;
    }

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

    //MARK:- METHODS
- (IBAction)start:(id)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    self.startButton.enabled = NO;
}
    
    -(void)updateTimer
    {
        count +=1;
        self.display.text = [NSString stringWithFormat:@"%i", count];
        
    }
    
- (IBAction)stop:(id)sender {
    [timer invalidate];
      self.startButton.enabled = YES;
}
    
- (IBAction)reset:(id)sender {
    [timer invalidate];
    count = 0 ;
    self.display.text = [NSString stringWithFormat:@"%i", count];
          self.startButton.enabled = YES;
}
    @end

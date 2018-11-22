//
//  ViewController.h
//  objectiveC
//
//  Created by amrpc on 11/13/18.
//  Copyright © 2018 amrpc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    @property (weak, nonatomic) IBOutlet UILabel *display;
   @property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)reset:(id)sender;
    
@end


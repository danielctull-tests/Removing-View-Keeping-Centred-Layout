//
//  ViewController.m
//  LayoutTest
//
//  Created by Daniel Tull on 16.01.2014.
//  Copyright (c) 2014 Daniel Tull. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIView *topView;
@end

@implementation ViewController

- (IBAction)removeView:(id)sender {
	[self.topView removeFromSuperview];
}

@end

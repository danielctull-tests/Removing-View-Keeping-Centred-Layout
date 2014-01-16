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
@property (nonatomic, weak) IBOutlet UIView *centeredView;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *constraint;
@end

@implementation ViewController

- (IBAction)removeView:(id)sender {
	[self.centeredView removeConstraint:self.constraint];
	[UIView animateWithDuration:3.0f animations:^{
		self.topView.alpha = 0.0f;
		[self.view layoutIfNeeded];
	} completion:^(BOOL finished) {
		[self.topView removeFromSuperview];
	}];
}

@end

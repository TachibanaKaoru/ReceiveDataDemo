//
//  ViewController.m
//  red
//
//  Created by Tachibana Kaoru on 12/09/29.
//  Copyright (c) 2012 Toyship.org. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
	[self setDebugtext:nil];
	[super viewDidUnload];
}

-(void)showDebugText:(NSString*)str{
	
	self.debugtext.text = [self.debugtext.text stringByAppendingString:str];
	
}

@end

//
//  ViewController.h
//  red
//
//  Created by Tachibana Kaoru on 12/09/29.
//  Copyright (c) 2012 Toyship.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *debugtext;

-(void)showDebugText:(NSString*)str;
@end

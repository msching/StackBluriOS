//
//  stackBlurViewController.m
//  stackBlur
//
//  Created by Thomas on 07/02/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "stackBlurViewController.h"
#import "UIImage+StackBlur.h"

@interface stackBlurViewController ()
{
    IBOutlet UIImageView *imagePreview;
    UIImage *source;
}
- (IBAction)sliderChanged:(id)sender;
@end

@implementation stackBlurViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	source = [UIImage imageNamed:@"testIma.jpg"];
	imagePreview.image = source;
}

- (void)didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (IBAction)sliderChanged:(UISlider *)sender
{
	NSLog(@"Slider: %zd",(NSInteger)sender.value);
	imagePreview.image=[source stackBlur:sender.value];
}
@end

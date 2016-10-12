//
//  CaptureManager.m
//  SuperTorch
//
//  Created by John on 10/07/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CaptureManager.h"


@implementation CaptureManager

@synthesize	session		= _session;

- (id)init	{
	
	if(self	=	[super	init])	{
		self.session	=	[[AVCaptureSession	alloc]	init];
	}
	
	return	self;
	
}

- (void)addVideoInput {
	
	AVCaptureDevice *videoDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];	
	if ( videoDevice ) {
		
		NSError *error;
		AVCaptureDeviceInput *videoIn = [AVCaptureDeviceInput deviceInputWithDevice:videoDevice error:&error];
		if ( !error ) {
			if ([self.session canAddInput:videoIn])	{
				[self.session addInput:videoIn];
			}
			else	{
				NSLog(@"Couldn't add video input");		
			}
		}
		else	{
			NSLog(@"Couldn't create video input");
		}
	}
	else	{
		NSLog(@"Couldn't create video capture device");
	}
}

-(void)addVideoOutput	{
	
	
	AVCaptureVideoDataOutput *videoOutput = [[AVCaptureVideoDataOutput alloc] init];
    [videoOutput setSampleBufferDelegate:nil queue:dispatch_get_current_queue()];
	
    [self.session addOutput:videoOutput];
}


	
@end

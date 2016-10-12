//
//  CaptureManager.h
//  SuperTorch
//
//  Created by John on 10/07/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import	<AVFoundation/AVCaptureSession.h>
#import	<AVFoundation/AVCaptureDevice.h>
#import	<AVFoundation/AVCaptureInput.h>
#import	<AVFoundation/AVMediaFormat.h>
#import	<AVFoundation/AVCaptureOutput.h>


@interface CaptureManager : NSObject {
	
	AVCaptureSession		*_session;
	
}

@property	(nonatomic, retain)	AVCaptureSession	*session;

- (void)addVideoInput;
- (void)addVideoOutput;


@end

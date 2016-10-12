//
//  SuperTorchAppDelegate.h
//  SuperTorch
//
//  Created by John on 10/07/2010.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SuperTorchViewController;

@interface SuperTorchAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SuperTorchViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SuperTorchViewController *viewController;

@end


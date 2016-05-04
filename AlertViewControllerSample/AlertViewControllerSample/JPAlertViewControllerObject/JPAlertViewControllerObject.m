//
//  JPAlertViewControllerObject.m
//  AlertViewControllerSample
//
//  Created by JoPrithiviraj on 28/04/16.
//  Copyright © 2016 JoPrithiviraj. All rights reserved.
//

#import "JPAlertViewControllerObject.h"

@implementation JPAlertViewControllerObject

static JPAlertViewControllerObject * _JPAlertViewControllerObject;

+ (JPAlertViewControllerObject *)sharedHelper {
    if (_JPAlertViewControllerObject != nil) {
        return _JPAlertViewControllerObject;
    }
    _JPAlertViewControllerObject = [[JPAlertViewControllerObject alloc] init];
    return _JPAlertViewControllerObject;
}

+ (void)removeSharedHelper {
    if (_JPAlertViewControllerObject != nil) {
        _JPAlertViewControllerObject = nil;
    }
}

-(void)showAlertTitle:(NSString *)title withMessage:(NSString *)message {
    self.commonAlertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
    }];
    [self.commonAlertController addAction:defaultAction];
}

- (void)showWindowAlertTitle:(NSString *)title withMessage:(NSString *)message onView:(UIWindow *)viewController {
    [self showAlertTitle:title withMessage:message];
    UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    alertWindow.rootViewController = [[UIViewController alloc] init];
    alertWindow.windowLevel = UIWindowLevelAlert + 1;
    [alertWindow makeKeyAndVisible];
    [alertWindow.rootViewController presentViewController:self.commonAlertController animated:YES completion:nil];
}

- (void)showViewControllerAlertTitle:(NSString *)title withMessage:(NSString *)message onView:(UIViewController *)viewController {
    [self showAlertTitle:title withMessage:message];
    UINavigationController *nvc = (UINavigationController *)[[[UIApplication sharedApplication] windows] objectAtIndex:0].rootViewController;
    UIViewController *vc = nvc.visibleViewController;
    [vc presentViewController:self.commonAlertController animated:YES completion:nil];
}

@end

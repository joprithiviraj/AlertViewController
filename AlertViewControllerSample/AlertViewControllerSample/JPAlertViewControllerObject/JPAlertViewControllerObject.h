//
//  JPAlertViewControllerObject.h
//  AlertViewControllerSample
//
//  Created by JoPrithiviraj on 28/04/16.
//  Copyright © 2016 JoPrithiviraj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JPAlertViewControllerObject : NSObject

@property (strong, nonatomic) UIAlertController *commonAlertController;

+ (JPAlertViewControllerObject *)sharedHelper;
+ (void)removeSharedHelper;

- (void)showWindowAlertTitle:(NSString *)title withMessage:(NSString *)message onView:(UIWindow *)viewController;
- (void)showViewControllerAlertTitle:(NSString *)title withMessage:(NSString *)message onView:(UIViewController *)viewController;

@end

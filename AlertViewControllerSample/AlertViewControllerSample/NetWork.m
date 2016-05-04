//
//  NetWork.m
//  AlertViewControllerSample
//
//  Created by JoPrithiviraj on 28/04/16.
//  Copyright © 2016 JoPrithiviraj. All rights reserved.
//

#import "NetWork.h"
#import "JPAlertViewControllerObject.h"

@implementation NetWork

-(id)init {
    self = [super init];
    return self;
}
-(void)test {
    //Object class adding alertview controller...
   [[JPAlertViewControllerObject sharedHelper] showViewControllerAlertTitle:@"view for object class " withMessage:@"this is creater for view controller" onView:[(UINavigationController *)[[[[UIApplication sharedApplication] delegate] window] rootViewController] topViewController]];
    
}

@end

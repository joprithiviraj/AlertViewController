//
//  ViewController.m
//  AlertViewControllerSample
//
//  Created by JoPrithiviraj on 28/04/16.
//  Copyright © 2016 JoPrithiviraj. All rights reserved.
//

#import "ViewController.h"
#import "JPAlertViewControllerObject.h"
#import "NetWork.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //this is viewcontroller using alertviewcontroller....
    [[JPAlertViewControllerObject sharedHelper] showViewControllerAlertTitle:@"view controller alert " withMessage:@"this is creater for view controller" onView:[(UINavigationController *)[[[[UIApplication sharedApplication] delegate] window] rootViewController] topViewController]];
    
    NetWork *net = [[NetWork alloc]init];
    [net test];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

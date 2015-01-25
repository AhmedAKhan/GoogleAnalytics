//
//  SecondViewController.m
//  GoogleAnalyticsTest
//
//  Created by Ahmed Arif Khan on 1/24/15.
//  Copyright (c) 2015 Ahmed Khan. All rights reserved.
//

#import "SecondViewController.h"
#import "GAIDictionaryBuilder.h"
#import "GAI.h"
#import "GAIFields.h"
#import "GAILogger.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    id<GAITracker> tracker2 = [[GAI sharedInstance] trackerWithName:@"tracker2" trackingId:@"UA-58876684-2"];
    [tracker2 set:kGAIScreenName value:@"secondView"];
    [tracker2 send:[[GAIDictionaryBuilder createAppView] build]];
    [[GAI sharedInstance] setDefaultTracker:tracker2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonPressed:(UIButton*)button{
    id<GAITracker> tracker2 = [[GAI sharedInstance]  defaultTracker];
    
    [tracker2 send:[[GAIDictionaryBuilder createEventWithCategory:@"UX"
                                                          action:@"user pressed button2"
                                                           label:@"pressed the only button on screan2"
                                                           value:[NSNumber numberWithFloat:20]] build]];
    
}

@end

//
//  ThirdViewController.m
//  GoogleAnalyticsTest
//
//  Created by Ahmed Arif Khan on 1/24/15.
//  Copyright (c) 2015 Ahmed Khan. All rights reserved.
//

#import "ThirdViewController.h"
#import "GAIDictionaryBuilder.h"
#import "GAI.h"
#import "GAIFields.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"Stopwatch"];
    [tracker send:[[GAIDictionaryBuilder createAppView] build]];
    
}

-(IBAction)buttonPressed:(UIButton *)button{
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    
    [tracker set:kGAIScreenName value:@"Stopwatch"];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"UX"
                                                          action:@"touch"
                                                          label:[button.titleLabel text]
                                                           value:nil] build]];
    [tracker set:kGAIScreenName value:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
// Your code goes here
// Don't forget to assign the window a rootViewController
    
    City *vancouver = [[City alloc] initWithTempC:3
                                            tempF:37.4
                               weatherDescription:@"Partly Cloudy"
                                             time:@"9:05 AM"
                                       chanceRain:0];
    
    City *toronto = [[City alloc] initWithTempC:5
                                          tempF:41
                             weatherDescription:@"Fog"
                                           time:@"12:05 PM"
                                     chanceRain:26];
    
    City *kathmandu = [[City alloc] initWithTempC:16
                                            tempF:60.8
                               weatherDescription:@"Clear"
                                             time:@"9:50 PM"
                                       chanceRain:0];
    
    City *anchorage = [[City alloc] initWithTempC:1
                                            tempF:33.8
                               weatherDescription:@"Partly Cloudy"
                                             time:@"8:05 AM"
                                       chanceRain:31];
    
    City *paris = [[City alloc] initWithTempC:7
                                        tempF:44.6
                           weatherDescription:@"Sunny"
                                         time:@"5:05 PM"
                                   chanceRain:0];
    
//declare and create UITabBarController cityTabs
    UITabBarController *cityTabs = [[UITabBarController alloc] init];
    
//set cityTabs as rootViewController
    self.window.rootViewController = cityTabs;
    
//initialize city view controllers here, the App Delegate handles all windows at app launch
    CityViewController *vancouverViewController = [[CityViewController alloc] initWithTitle:@"Vancouver" city:vancouver];
    
    CityViewController *torontoViewController = [[CityViewController alloc] initWithTitle:@"Toronto" city:toronto];
    
    CityViewController *kathmanduViewController = [[CityViewController alloc] initWithTitle:@"Kathmandu" city:kathmandu];
    
    CityViewController *anchorageViewController = [[CityViewController alloc] initWithTitle:@"Anchorage" city:anchorage];
    
    CityViewController *parisViewController = [[CityViewController alloc] initWithTitle:@"Paris" city:paris];
    
//initialize navigation controllers and initialize them with corresponding city view controller
    UINavigationController *vancouverNavController = [[UINavigationController alloc] initWithRootViewController:vancouverViewController];
    
    UINavigationController *torontoNavController = [[UINavigationController alloc] initWithRootViewController:torontoViewController];
    
    UINavigationController *kathmanduNavController = [[UINavigationController alloc] initWithRootViewController:kathmanduViewController];
    
    UINavigationController *anchorageNavController = [[UINavigationController alloc] initWithRootViewController:anchorageViewController];
    
    UINavigationController *parisNavController = [[UINavigationController alloc] initWithRootViewController:parisViewController];

//create array of navigation controllers to pass to tab bar controller (the root view of these nav controllers are the corresponding city views)
    NSArray *cityNavControllers = @[vancouverNavController, torontoNavController, kathmanduNavController, anchorageNavController, parisNavController];
    
    cityTabs.viewControllers = cityNavControllers;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end

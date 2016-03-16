//
//  CityViewController.h
//  Weather
//
//  Created by Tenzin Phagdol on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class City;

@interface CityViewController : UIViewController

-(instancetype)initWithTitle:(NSString *)title city:(City *)city;

@end

//
//  City.h
//  Weather
//
//  Created by Tenzin Phagdol on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property CGFloat currentTempCelsius;

@property CGFloat currentTempFahrenheit;

@property (nonatomic, strong) NSString *currentWeather; //e.g. partly cloudy, etc.

@property (nonatomic, strong) NSString *currentTime; //possible change to NSDate type later

@property CGFloat chanceOfRain; //a.k.a. probability or precipitation (PoP)

-(instancetype)initWithTempC:(CGFloat)tempC
                       tempF:(CGFloat)tempF
          weatherDescription:(NSString *)currentWeather
                        time:(NSString *)currentTime
                  chanceRain:(CGFloat)chanceOfRain;

@end

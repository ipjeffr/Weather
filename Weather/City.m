//
//  City.m
//  Weather
//
//  Created by Tenzin Phagdol on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype)initWithTempC:(CGFloat)tempC
                       tempF:(CGFloat)tempF
          weatherDescription:(NSString *)currentWeather
                        time:(NSString *)currentTime
                  chanceRain:(CGFloat)chanceOfRain {
    
    self = [super init];
    
    if (self) {
        self.currentTempCelsius = tempC;
        
        self.currentTempFahrenheit = tempF;
        
        self.currentWeather = currentWeather;
        
        self.currentTime = currentTime;
        
        self.chanceOfRain = chanceOfRain;
        
    } return self;
}




@end

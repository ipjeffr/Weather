//
//  DetailedViewController.m
//  Weather
//
//  Created by Tenzin Phagdol on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"
#import "City.h"

@interface DetailedViewController ()

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel *detailsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,300,300)];
    detailsLabel.backgroundColor = [UIColor whiteColor];

    NSString *formattedString = [NSString stringWithFormat:@"%0.1f C/ %0.1f F\n %@\n %@\nChance of Rain: %0.1f %%", self.city.currentTempCelsius, self.city.currentTempFahrenheit, self.city.currentWeather, self.city.currentTime, self.city.chanceOfRain];
    
    detailsLabel.text = formattedString;
    detailsLabel.textAlignment = NSTextAlignmentCenter;
    detailsLabel.textColor = [UIColor blackColor];
    detailsLabel.center = self.view.center;
    detailsLabel.lineBreakMode = NSLineBreakByWordWrapping;
    detailsLabel.numberOfLines = 0;
    [self.view addSubview:detailsLabel];
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

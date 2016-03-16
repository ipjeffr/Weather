//
//  CityViewController.m
//  Weather
//
//  Created by Tenzin Phagdol on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"
#import "City.h"

@interface CityViewController ()

@property City *city;

@end

@implementation CityViewController

-(instancetype)initWithTitle:(NSString *)title city:(City *)city {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = title;
        self.city = city;
    } return self;
}

-(void)showWeatherDetails {
    
    DetailedViewController *detailedViewController = [[DetailedViewController alloc] init];
    detailedViewController.city = self.city;
    [self.navigationController pushViewController:detailedViewController animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

//create bar button for details
    UIBarButtonItem *detailsButton = [[UIBarButtonItem alloc] initWithTitle:@"Details" style:UIBarButtonItemStyleBordered target:self action:@selector(showWeatherDetails)];
    self.navigationItem.rightBarButtonItem = detailsButton;
    
//UILabels for general info
    UILabel *cityViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,300,300)];
    cityViewLabel.text = (@"%@", self.city.currentWeather);
    cityViewLabel.backgroundColor = [UIColor blackColor];
    cityViewLabel.textAlignment = NSTextAlignmentCenter;
    cityViewLabel.textColor = [UIColor whiteColor];
    cityViewLabel.center = self.view.center;
    cityViewLabel.lineBreakMode = NSLineBreakByWordWrapping;
    cityViewLabel.numberOfLines = 0;
    [self.view addSubview:cityViewLabel];
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

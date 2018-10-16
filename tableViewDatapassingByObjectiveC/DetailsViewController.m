//
//  DetailsViewController.m
//  tableViewDatapassingByObjectiveC
//
//  Created by Sahadat  Hossain on 16/10/18.
//  Copyright © 2018 Sahadat  Hossain. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

@synthesize player_img, player_name, country_name;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    player_name.text = self.str_name;
    country_name.text = self.str_country;
    player_img.image = [UIImage imageNamed:self.str_img];
}

- (void)didReceiveMemoryWarning {
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

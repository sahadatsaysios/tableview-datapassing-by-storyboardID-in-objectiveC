//
//  DetailsViewController.h
//  tableViewDatapassingByObjectiveC
//
//  Created by Sahadat  Hossain on 16/10/18.
//  Copyright © 2018 Sahadat  Hossain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *player_img;
@property (strong, nonatomic) IBOutlet UILabel *player_name;
@property (strong, nonatomic) IBOutlet UILabel *country_name;

@property NSString *str_name;
@property NSString *str_country;
@property NSString *str_img;

@end

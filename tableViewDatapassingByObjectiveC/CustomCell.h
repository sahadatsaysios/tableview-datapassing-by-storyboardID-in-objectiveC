//
//  CustomCell.h
//  tableViewDatapassingByObjectiveC
//
//  Created by Sahadat  Hossain on 16/10/18.
//  Copyright © 2018 Sahadat  Hossain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *playerNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *countryNameLbl;
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

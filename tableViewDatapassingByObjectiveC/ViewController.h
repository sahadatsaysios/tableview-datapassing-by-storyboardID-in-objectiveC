//
//  ViewController.h
//  tableViewDatapassingByObjectiveC
//
//  Created by Sahadat  Hossain on 15/10/18.
//  Copyright © 2018 Sahadat  Hossain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property NSMutableArray *playerNameList;
@property NSMutableArray *countryList;
@property NSMutableArray *imgs;

@end


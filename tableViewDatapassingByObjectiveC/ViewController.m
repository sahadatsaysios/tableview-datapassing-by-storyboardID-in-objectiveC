//
//  ViewController.m
//  tableViewDatapassingByObjectiveC
//
//  Created by Sahadat  Hossain on 15/10/18.
//  Copyright © 2018 Sahadat  Hossain. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "DetailsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize playerNameList, countryList, imgs;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    playerNameList = [[NSMutableArray alloc] initWithObjects:@"Mashrafi bin Mortoza", @"Nasir Hossain", @"Rubel Hossain", @"Sakib Al Hasan", nil];
    countryList = [[NSMutableArray alloc] initWithObjects:@"Bangladesh", @"Bangladesh", @"Bangladesh", @"Bangladesh", nil];
    imgs = [[NSMutableArray alloc] initWithObjects:@"mashrafi.jpg", @"nasir.jpg", @"rubel-hossain.jpg", @"sakib-al-hasan", nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return playerNameList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cellForReuse"];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.playerNameLbl.text = [playerNameList objectAtIndex:indexPath.row];
    cell.countryNameLbl.text = [countryList objectAtIndex:indexPath.row];
    cell.img.image = [UIImage imageNamed:[imgs objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *p_name = [playerNameList objectAtIndex:indexPath.row];
    NSString *country = [countryList objectAtIndex:indexPath.row];
    NSString *img = [imgs objectAtIndex:indexPath.row];
    
   
    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil]; // point main storyboard
    
    
    DetailsViewController *details = [board instantiateViewControllerWithIdentifier:@"DetailsViewController"];

    details.str_name = p_name;
    details.str_country = country;
    details.str_img = img;

    
    [self.navigationController pushViewController:details animated:true];
}


@end

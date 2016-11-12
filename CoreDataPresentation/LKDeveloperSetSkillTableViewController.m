//
//  LKDeveloperSetSkillTableViewController.m
//  CoreDataPresentation
//
//  Created by Thomas Bibby on 12/11/2016.
//  Copyright © 2016 Till Now Limited. All rights reserved.
//

#import "LKDeveloperSetSkillTableViewController.h"

@interface LKDeveloperSetSkillTableViewController ()

@end

@implementation LKDeveloperSetSkillTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"normalCell"];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"normalCell" forIndexPath:indexPath];
    
    
    if(YES)
    {
        [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    }
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    if(/* DISABLES CODE */ (YES))
    {
        
        [cell setAccessoryType:UITableViewCellAccessoryNone];
    }
    else
    {
        
        [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    }
    
    [cell setSelected:NO];
}

@end

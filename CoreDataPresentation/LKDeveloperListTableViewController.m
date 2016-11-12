//
//  LKDeveloperListTableViewController.m
//  CoreDataPresentation
//
//  Created by Thomas Bibby on 12/11/2016.
//  Copyright © 2016 Till Now Limited. All rights reserved.
//

#import "LKDeveloperListTableViewController.h"
#import "LKDeveloperDetailTableViewController.h"

@interface LKDeveloperListTableViewController ()
-(void)addNewDeveloper;

@end

@implementation LKDeveloperListTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"normalCell"];
    
    UINavigationItem *navItem = [self navigationItem];
    [navItem setTitle:NSLocalizedString(@"Developers", "Title for nav controller")];
    
    UIBarButtonItem *addNewButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewDeveloper)];
    [navItem setRightBarButtonItem:addNewButton];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
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
    
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
       LKDeveloperDetailTableViewController *edittvc = [[LKDeveloperDetailTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    
    [self.navigationController pushViewController:edittvc animated:YES];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        
        [self.tableView reloadData];
    }
}


-(void)addNewDeveloper
{
   
    
    
}

@end

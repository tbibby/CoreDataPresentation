//
//  LKDeveloperDetailTableViewController.m
//  CoreDataPresentation
//
//  Created by Thomas Bibby on 12/11/2016.
//  Copyright © 2016 Till Now Limited. All rights reserved.
//

#import "LKDeveloperDetailTableViewController.h"
#import "LKEditTextTableViewCell.h"
#import "LKDeveloperSetSkillTableViewController.h"
#import "LKDeveloperSetLocationTableViewController.h"

@interface LKDeveloperDetailTableViewController ()
@property (nonatomic, weak)UITextField *nameField;

@end

@implementation LKDeveloperDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"LKEditTextTableViewCell" bundle:nil] forCellReuseIdentifier:@"editCell"];
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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];

    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *theCell = [[UITableViewCell alloc]init];
    
    
    
    // Configure the cell...
    if([indexPath row]==0)
    {
        LKEditTextTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"editCell" forIndexPath:indexPath];
        [[cell editLabel]setText:NSLocalizedString(@"Name:",@"label in edit cell")];
        
        [[cell editField]setDelegate:self];
        self.nameField = [cell editField];
        [theCell setSelectionStyle:UITableViewCellSelectionStyleNone];
        theCell = cell;
    }
    else if([indexPath row] == 1)
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"normalCell" forIndexPath:indexPath];
        [[cell textLabel]setText:NSLocalizedString(@"Question?","title for table view cell")];
        UISwitch *cellSwitch = [[UISwitch alloc]initWithFrame:CGRectZero];
        [cellSwitch setOn:NO];
        
        [cellSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
        [cell setAccessoryView:cellSwitch];
        [theCell setSelectionStyle:UITableViewCellSelectionStyleNone];
        
        theCell = cell;
    }
    else if([indexPath row] == 2)
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"detailCell"];
        if(!cell)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"detailCell"];
        }
        
        [[cell textLabel]setText:NSLocalizedString(@"Location","title for table view cell")];
        [[cell detailTextLabel]setText:NSLocalizedString(@"detail", @"detail in table cell")];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        
        theCell = cell;
    }
    else if([indexPath row] == 3)
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"detailCell"];
        if(!cell)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"detailCell"];
        }
        
        [[cell textLabel]setText:NSLocalizedString(@"Skills","title for table view cell")];
        
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        theCell = cell;
    }
    
    
    
    
    
    
    return theCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([indexPath row] == 2)
    {
        LKDeveloperSetLocationTableViewController *tvc = [[LKDeveloperSetLocationTableViewController alloc]init];
        
        [[tvc navigationItem]setTitle:NSLocalizedString(@"Set Developer location", @"title in nav bar")];
        [self.navigationController pushViewController:tvc animated:YES];
    }
    else if([indexPath row] == 3)
    {
        LKDeveloperSetSkillTableViewController *tvc = [[LKDeveloperSetSkillTableViewController alloc]init];
        
        [[tvc navigationItem]setTitle:NSLocalizedString(@"Set Developer Skills", @"title in nav bar")];
        [self.navigationController pushViewController:tvc animated:YES];
    }
}



-(void)switchChanged:(UISwitch *)sender {
    
    //switch changed
    
    
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if(textField == self.nameField)
    {
        
    }
    [textField resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


@end

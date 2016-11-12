//
//  LKSkillDetailTableViewController.m
//  CoreDataPresentation
//
//  Created by Thomas Bibby on 12/11/2016.
//  Copyright © 2016 Till Now Limited. All rights reserved.
//

#import "LKSkillDetailTableViewController.h"
#import "LKEditTextTableViewCell.h"

@interface LKSkillDetailTableViewController ()
@property (nonatomic, weak)UITextField *nameField;
@end

@implementation LKSkillDetailTableViewController
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



    return theCell;
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

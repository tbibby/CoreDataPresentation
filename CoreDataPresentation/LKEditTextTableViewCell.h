//
//  LKEditTextTableViewCell.h
//  CoreDataPresentation
//
//  Created by Thomas Bibby on 12/11/2016.
//  Copyright © 2016 Till Now Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LKEditTextTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *editLabel;
@property (weak, nonatomic) IBOutlet UITextField *editField;

@end

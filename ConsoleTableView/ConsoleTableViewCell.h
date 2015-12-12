//
//  ConsoleTableViewCell.h
//  ConsoleTableView
//
//  Created by user on 12/12/15.
//  Copyright © 2015 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConsoleTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *consoleImage;
@property (weak, nonatomic) IBOutlet UILabel *consoleName;
@property (weak, nonatomic) IBOutlet UILabel *consoleCompany;

@end

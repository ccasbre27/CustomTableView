//
//  ConsoleDetailViewController.h
//  ConsoleTableViewNavigation
//
//  Created by user on 12/12/15.
//  Copyright © 2015 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConsoleDetailViewController : UIViewController

@property (strong,nonatomic) NSArray *consoleDetailModel;

@property (weak, nonatomic) IBOutlet UILabel *lblConsoleName;
@property (weak, nonatomic) IBOutlet UILabel *lblConsoleCompany;
@property (weak, nonatomic) IBOutlet UIImageView *imgConsole;

@end

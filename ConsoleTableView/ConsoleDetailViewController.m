//
//  ConsoleDetailViewController.m
//  ConsoleTableViewNavigation
//
//  Created by user on 12/12/15.
//  Copyright © 2015 user. All rights reserved.
//

#import "ConsoleDetailViewController.h"

@interface ConsoleDetailViewController ()

@end

@implementation ConsoleDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // obtenemos los datos
    _lblConsoleName.text = _consoleDetailModel[0];
    _lblConsoleCompany.text = _consoleDetailModel[1];
    _imgConsole.image = [UIImage imageNamed:_consoleDetailModel[2]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

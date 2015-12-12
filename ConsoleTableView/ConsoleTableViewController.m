//
//  ConsoleTableViewController.m
//  ConsoleTableView
//
//  Created by user on 12/12/15.
//  Copyright © 2015 user. All rights reserved.
//

#import "ConsoleTableViewController.h"
#import "ConsoleTableViewCell.h"

@interface ConsoleTableViewController ()

@end

@implementation ConsoleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setContentInset:UIEdgeInsetsMake(20, self.tableView.contentInset.left, self.tableView.contentInset.bottom, self.tableView.contentInset.right)];
    _consoleCompanies = @[@"Microsoft",@"Sony",@"Nintendo",@"Steam"];
    _consoleNames = @[@"XBOX One",@"Play Station",@"Wii U",@"Steam Machine"];
    _consoleImages = @[@"angry_birds_cake.jpg",@"creme_brelee.jpg",@"egg_benedict.jpg",@"full_breakfast.jpg"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _consoleImages.count;
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"consoleTableCell";
    
    ConsoleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[ConsoleTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.consoleName.text = [_consoleNames objectAtIndex:indexPath.row];
    cell.consoleCompany.text = [_consoleCompanies objectAtIndex:indexPath.row];
    
    // retorna el texto y luego crea la imagen a partir de ese texto
    cell.consoleImage.image = [UIImage imageNamed:[_consoleImages objectAtIndex:indexPath.row]];
    
    return cell;
}

@end

//
//  PhotosListTableViewController.m
//  iFORSFirstTestProject
//
//  Created by Артем Григорян on 15.10.2019.
//  Copyright © 2019 Artyom Grigoryan. All rights reserved.
//

#import "PhotosListTableViewController.h"

@interface PhotosListTableViewController ()

@end

@implementation PhotosListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[PhotosListTableViewCell class] forCellReuseIdentifier:NSStringFromClass([PhotosListTableViewCell class])];
    
    _photosListTableViewViewModel = [[PhotosListTableViewViewModel alloc] initWithUserQuery:@"cat"];
    
    __weak __typeof(self)weakSelf = self;

    [_photosListTableViewViewModel fetchImages:^{
        __typeof(self)strongSelf = weakSelf;
        if (strongSelf)
            [strongSelf.tableView reloadData];
    } failure:^{
        __typeof(self)strongSelf = weakSelf;
        if (strongSelf)
            [strongSelf showAlertWithTitle:strongSelf->_photosListTableViewViewModel.error.localizedDescription];
    }];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_photosListTableViewViewModel numberOfItemsInSection];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PhotosListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([PhotosListTableViewCell class]) forIndexPath:indexPath];
    
    PhotosListTableViewCellViewModel *cellViewModel = [_photosListTableViewViewModel cellViewModelForIndexPath:indexPath];

    [cell configureCell:cellViewModel];
            
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200.0f;
}

#pragma mark - UI

- (void)showAlertWithTitle:(NSString *) title {
    NSString *actionMessage = @"OK";
    NSString *tryAgainErrorMessage = @"Повторите попытку.";
    
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:title
                                                                message:tryAgainErrorMessage
                                                         preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okay = [UIAlertAction actionWithTitle:actionMessage
                                                   style:UIAlertActionStyleDefault
                                                 handler:^(UIAlertAction * _Nonnull action) {}];
    
    [ac addAction:okay];
    
    [self presentViewController:ac animated:YES completion:nil];
}

@end

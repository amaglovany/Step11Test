//
//  StepViewController.m
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import "StepViewController.h"
#import "Persons.h"
#import "StepPresenter.h"
#import "PersonTableViewCell.h"

@interface StepViewController ()<UITableViewDataSource, UITableViewDelegate, StepViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) StepPresenter *presenter;

@property (strong, nonatomic) NSArray<Person *> *persons;

@end

@implementation StepViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupUI];
    self.presenter = [[StepPresenter alloc] init];
    self.presenter.stepViewDelegate = self;
}

- (void) setupUI {
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:@"PersonTableViewCell" bundle:nil] forCellReuseIdentifier:@"PersonTableViewCell"];
}

//MARK:  UITableViewDataSource -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.persons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonTableViewCell"];
    if (cell == nil) {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"PersonTableViewCell" owner:self options:nil];
        cell = [topLevelObjects objectAtIndex:0];
    }
    [cell configureView:[self.persons objectAtIndex:indexPath.row]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 110.0;
}

//MARK:  StepViewDelegate -

- (void)displayPersons:(NSArray<Person *> *)persons {
    self.persons = persons;
    [self.tableView reloadData];
}

@end

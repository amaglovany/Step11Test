//
//  PersonTableViewCell.h
//  Step11
//
//  Created by admin on 20.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface PersonTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *fullnameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UIView *entryView;

- (void) configureView: (Person *) person;

@end



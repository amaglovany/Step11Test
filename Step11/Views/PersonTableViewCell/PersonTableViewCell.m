//
//  PersonTableViewCell.m
//  Step11
//
//  Created by admin on 20.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import "PersonTableViewCell.h"


@implementation PersonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupUI];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


//MARK: - Private -
- (void) setupUI {
    self.entryView.layer.cornerRadius = 8.0;
    self.entryView.layer.borderWidth = 2.0;
    self.entryView.layer.borderColor = [[UIColor colorWithRed:66/255.f green:71/255.f blue:74/255.f alpha:1.0] CGColor];
}

- (void) configureView: (Person *) person {
    NSString *fullname = [person.name stringByAppendingFormat:@" %@", person.surname];
    self.fullnameLabel.text = fullname;
    NSString *ageText = [[person.age stringValue] stringByAppendingFormat:@" years"];
    self.ageLabel.text = ageText;
}

@end

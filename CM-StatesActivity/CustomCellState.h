//
//  CustomCellState.h
//  CM-StatesActivity
//
//  Created by José Ramón Muñoz Fregoso on 23/06/15.
//  Copyright (c) 2015 Stratia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellState : UITableViewCell

//Objects
@property (strong, nonatomic) IBOutlet UIImageView *imgLogo;
@property (strong, nonatomic) IBOutlet UILabel *lblState;
@property (strong, nonatomic) IBOutlet UILabel *lblPoliticName;
@property (strong, nonatomic) IBOutlet UILabel *lblGroup;

@end

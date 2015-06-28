//
//  Details.h
//  CM-StatesActivity
//
//  Created by José Ramón Muñoz Fregoso on 23/06/15.
//  Copyright (c) 2015 Stratia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Details : UIViewController

//Objects
@property (strong, nonatomic) IBOutlet UIImageView *imgHolder;
@property (strong, nonatomic) IBOutlet UILabel *lblGroup;
@property (strong, nonatomic) IBOutlet UILabel *lblState;
@property (strong, nonatomic) IBOutlet UILabel *lblPoliticName;
@property (strong, nonatomic) IBOutlet UILabel *lblDescription;
@property (strong, nonatomic) IBOutlet UIButton *btnOk;

//Actions
- (IBAction)btnOkPressed:(id)sender;

@end

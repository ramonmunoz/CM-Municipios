//
//  Intro.h
//  CM-StatesActivity
//
//  Created by José Ramón Muñoz Fregoso on 23/06/15.
//  Copyright (c) 2015 Stratia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Intro : UIViewController

//Objects
@property NSUInteger                                iPageIndex;
@property (strong, nonatomic) IBOutlet UIImageView *imgIntro;
@property (strong, nonatomic) IBOutlet UILabel *lblIntro;
@property (strong, nonatomic) IBOutlet UIButton *btnSkip;

//Actions
- (IBAction)btnSkipPressed:(id)sender;

@end

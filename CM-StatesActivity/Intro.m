//
//  Intro.m
//  CM-StatesActivity
//
//  Created by José Ramón Muñoz Fregoso on 23/06/15.
//  Copyright (c) 2015 Stratia. All rights reserved.
//

#import "Intro.h"
#import "Declarations.h"
#import "Home.h"

@interface Intro ()

@end

@implementation Intro


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Round user image and add a white border
    self.btnSkip.layer.borderColor    = [UIColor clearColor].CGColor;
    self.btnSkip.layer.borderWidth    = 2.0;
    self.btnSkip.clipsToBounds        = YES;
    self.btnSkip.layer.cornerRadius   = 4;
    
    //self.lblIntro.font = [UIFont fontWithName:@"System" size:20.0];
    
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
-(void)viewWillAppear:(BOOL)animated {
    self.lblIntro.text  = maIntroTitles[self.iPageIndex];
    self.lblIntro.adjustsFontSizeToFitWidth = YES;
    self.imgIntro.image = [UIImage imageNamed:maIntroImgs[self.iPageIndex]];
    if (self.iPageIndex == 2)
    {
        self.btnSkip.hidden = NO;
    }
}
//-------------------------------------------------------------------------------
- (IBAction)btnSkipPressed:(id)sender
{
    /*[mUserDefaults setObject: @"YES" forKey: @"firstTimeCheck"];
    NSString *stTemp = [mUserDefaults objectForKey:@"firstTimeCheck"];
    NSLog(@"firstTimeCheck = %@", stTemp);*/
    
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];
}

@end

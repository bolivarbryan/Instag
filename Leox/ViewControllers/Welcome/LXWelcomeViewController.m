//
//  LXWelcomeViewController.m
//  Leox
//
//  Created by Bryan A Bolivar M on 11/25/15.
//  Copyright © 2015 OfferAppSAS. All rights reserved.
//

#import "LXWelcomeViewController.h"

@interface LXWelcomeViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *arrowConstraint;
@property (weak, nonatomic) IBOutlet UIImageView *arrow;

@end

@implementation LXWelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self navigationController] setNavigationBarHidden:true animated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)signUp:(id)sender {
    [self animateArrow:CGRectGetMidX([(UIButton *)sender frame])];
}

- (IBAction)login:(id)sender {
    [self animateArrow:CGRectGetMidX([(UIButton *)sender frame])];
}

-(void)animateArrow:(float)x{
    [self.view layoutIfNeeded];
    self.arrowConstraint.constant = x-(CGRectGetWidth(self.arrow.bounds)/2);
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}
@end

//
//  TipCalcViewController.m
//  TipCalc
//
//  Created by Y.CORP.YAHOO.COM\prachiti on 6/8/13.
//  Copyright (c) 2013 Aaniya. All rights reserved.
//

#import "TipCalcViewController.h"

@interface TipCalcViewController ()
@property (weak, nonatomic) IBOutlet UITextField *showCalValue;
- (IBAction)calculateTip:(UIButton *)sender;


@end

@implementation TipCalcViewController

- (IBAction)calculateTip:(UIButton *)sender {
    int tip = 15;
    self.amount = self.showCalValue.text;
    NSLog(@"Button pressed: %@", [sender currentTitle]);
    if ([sender.currentTitle isEqualToString:@"20%"]) {
        tip = 20;
    } else if ([sender.currentTitle isEqualToString:@"15%"]) {
        tip = 15;
    }
    double amount = (self.amount.doubleValue * tip ) / 100;
    NSString *message = [[NSString alloc] initWithFormat:@"%g", amount];
    self.showCalValue.text = message;
}


- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.showCalValue) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end

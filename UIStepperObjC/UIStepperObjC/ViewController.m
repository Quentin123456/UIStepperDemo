//
//  ViewController.m
//  UIStepperObjC
//
//  Created by Quentin Zang on 2019/12/14.
//  Copyright © 2019 臧乾坤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.valueLabel.text = [NSString stringWithFormat:@"%.0f",self.stepper.value];
}


- (IBAction)stepperChanged:(UIStepper *)sender {
    self.valueLabel.text = [NSString stringWithFormat:@"%.0f", sender.value];
}


@end

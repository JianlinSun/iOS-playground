//
//  ViewController.m
//  BullsEye
//
//  Created by JaneSun on 04/06/2018.
//  Copyright © 2018 JaneSun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (assign, nonatomic) int currentValue;

@end

@implementation ViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        _currentValue = 0;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderMoved:(id)sender {
    UISlider *slider = (UISlider *)sender;
    self.currentValue = slider.value;
}

- (IBAction)tapHitMe:(id)sender {
    NSString *message = [NSString localizedStringWithFormat:@"The current value of slide is: %d", self.currentValue];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Hello world" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Continue" style:UIAlertActionStyleDefault handler:nil];
    
    [alertController addAction:action];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end

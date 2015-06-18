//
//  ViewController.m
//  Frankies
//
//  Created by Sreelal H on 13/06/15.
//  Copyright (c) 2015 Sreelal H. All rights reserved.
//

#import "LoginViewController.h"
#import "RoundedImageView.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet RoundedImageView *roundImage;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLogin:(id)sender {
    
    [self performSegueWithIdentifier:@"mainAppContainerSegue" sender:self];
}
@end

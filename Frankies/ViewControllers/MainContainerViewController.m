//
//  MainContainerViewController.m
//  Frankies
//
//  Created by Sreelal H on 13/06/15.
//  Copyright (c) 2015 Sreelal H. All rights reserved.
//

#import "MainContainerViewController.h"
#import "LeftMenuViewController.h"
#import "CategoryViewController.h"

@interface MainContainerViewController ()<LeftMenuViewControllerDelegate>

@end

@implementation MainContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)awakeFromNib
{
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"categoryVC"];
    
    LeftMenuViewController *_leftmenuVC = [self.storyboard instantiateViewControllerWithIdentifier:@"leftMenuVC"];
    _leftmenuVC.delegate = self;
    self.leftMenuViewController = _leftmenuVC;
    
    self.scaleContentView = NO;
    self.scaleMenuView = NO;
    self.fadeMenuView = YES;
    self.parallaxEnabled = NO;
}

- (void)didSelectMenuItemAtIndex:(NSInteger)indexValue{
    
    switch (indexValue) {
        case 0:
        {
            
            self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"categoryVC"];

        }
            break;
        case 1:
        {
            
            self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"profileNavVC"];

        }
            break;
        default:
            break;
    }
    [self hideMenuViewController];
}


@end

//
//  ProfileViewController.m
//  Frankies
//
//  Created by Sreelal  Hamsavahanan on 18/06/15.
//  Copyright (c) 2015 Sreelal H. All rights reserved.
//

#import "ProfileViewController.h"
#import "ProfileTableViewCell.h"
#import "RoundedImageView.h"

#define CELL_HEIGHT 200

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet RoundedImageView *roundedImage;
@property (nonatomic,retain)IBOutlet UITableView *recentSelectionTble;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.recentSelectionTble.estimatedRowHeight = CELL_HEIGHT;
    self.recentSelectionTble.rowHeight = UITableViewAutomaticDimension;
    
    // Do any additional setup after loading the view.
    _roundedImage.imageToload = [UIImage imageNamed:@"pro_pic_sample"];
}


#pragma mark - Tableview delegates

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
//{
//    
//    return CELL_HEIGHT;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ProfileTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"profileCell"];
    return cell;
}
@end

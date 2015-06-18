//
//  CategoryDetailsViewController.m
//  Frankies
//
//  Created by Sreelal  Hamsavahanan on 17/06/15.
//  Copyright (c) 2015 Sreelal H. All rights reserved.
//

#import "CategoryDetailsViewController.h"
#import "CategoryTableCell.h"
#define CELL_HEIGHT 200


@interface CategoryDetailsViewController ()

@property (nonatomic,retain)NSMutableArray *sampleImagesCollection;
@property (nonatomic,retain)IBOutlet UITableView *categoryDetailsTble;

@end


@implementation CategoryDetailsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.categoryDetailsTble.estimatedRowHeight = CELL_HEIGHT;
    self.categoryDetailsTble.rowHeight = UITableViewAutomaticDimension;
    
    
    // Do any additional setup after loading the view.
    self.title = @"American Cuisine";
    _sampleImagesCollection = [[NSMutableArray alloc] initWithObjects:@"receipe_sample_pic_1",@"receipe_sample_pic_2",@"receipe_sample_pic_3",nil];

    
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
    
    CategoryTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryDetailsCell"];
    cell.categoryImage.image = [UIImage imageNamed:[_sampleImagesCollection objectAtIndex:indexPath.row%3]];
    cell.roundedCategoryImage.imageToload = [UIImage imageNamed:@"rec_thumb_sample"];
    return cell;
}


@end

//
//  CategoryViewController.m
//  Frankies
//
//  Created by Sreelal H on 13/06/15.
//  Copyright (c) 2015 Sreelal H. All rights reserved.
//

#import "CategoryViewController.h"
#import "CategoryTableCell.h"

#define CELL_HEIGHT 200


@interface CategoryViewController ()

@property (nonatomic,retain)NSMutableArray *sampleImagesCollection;
@property (nonatomic,retain)IBOutlet UITableView *categoryTble;


@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _sampleImagesCollection = [[NSMutableArray alloc] initWithObjects:@"category1",@"category2", nil];
    self.categoryTble.estimatedRowHeight = CELL_HEIGHT;
    self.categoryTble.rowHeight = UITableViewAutomaticDimension;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
    CategoryTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryCell"];
    cell.categoryImage.image = [UIImage imageNamed:[_sampleImagesCollection objectAtIndex:indexPath.row%2]];
    cell.roundedCategoryImage.imageToload = [UIImage imageNamed:@"rec_thumb_sample"];

    return cell;
}

@end

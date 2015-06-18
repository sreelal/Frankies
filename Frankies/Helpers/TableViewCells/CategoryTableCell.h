//
//  CategoryTableCell.h
//  Frankies
//
//  Created by Sreelal  Hamsavahanan on 17/06/15.
//  Copyright (c) 2015 Sreelal H. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoundedImageView.h"

@interface CategoryTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *categoryImage;
@property (weak, nonatomic) IBOutlet RoundedImageView *roundedCategoryImage;
@property (weak, nonatomic) IBOutlet UILabel *categoryTitle;
@property (weak, nonatomic) IBOutlet UILabel *categorySubtitle;
@end

//
//  RoundedImageView.h
//  Frankies
//
//  Created by Sreelal  Hamsavahanan on 17/06/15.
//  Copyright (c) 2015 Sreelal H. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoundedImageView : UIView{
    
}

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat diameter;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic,retain) UIImage *imageToload;


//- (instancetype)initwithFrame:(CGRect)frameRect andImage:(UIImage*)image;
@end

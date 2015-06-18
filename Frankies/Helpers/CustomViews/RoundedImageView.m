//
//  RoundedImageView.m
//  Frankies
//
//  Created by Sreelal  Hamsavahanan on 17/06/15.
//  Copyright (c) 2015 Sreelal H. All rights reserved.
//

#import "RoundedImageView.h"


@interface RoundedImageView ()

@property (nonatomic,retain) UIImageView *imageContainer ;

@end

@implementation RoundedImageView


- (void)awakeFromNib{
    
    self.frame = CGRectMake(self.frame.origin.x
                            , self.frame.origin.y,
                            self.diameter,
                            self.diameter);
    
    //Create imageView
    _imageContainer = [[UIImageView alloc] initWithFrame:self.bounds];
    [self addSubview:_imageContainer];
    
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
    self.layer.cornerRadius = _imageContainer.frame.size.width / 2;
    self.clipsToBounds = YES;
}


- (void)setImageToload:(UIImage *)imageToload{
    
    _imageToload  = imageToload;
    self.imageContainer.image = _imageToload;
}

//- (instancetype)initwithDiameter:(CGFloat)diameter andImage:(UIImage*)image{
//    
//    id currentObject;
//    currentObject = [self initWithFrame:CGRectMake(0, 0, diameter, diameter)];
//    if (currentObject) {
//        _imageToload = image;
//        
//        //Create imageView
//        UIImageView *_imageContainer = [[UIImageView alloc] initWithFrame:self.bounds];
//        [currentObject addSubview:_imageContainer];
//        _imageContainer.image = image;
//        
//        self.layer.borderWidth = 2.0;
//        self.layer.borderColor = [UIColor whiteColor].CGColor;
//        self.layer.cornerRadius = diameter / 2;
//        self.clipsToBounds = YES;
//    }
//    
//    return currentObject;
//}

@end

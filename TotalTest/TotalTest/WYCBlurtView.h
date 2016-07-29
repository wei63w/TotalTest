//
//  WYCBlurtView.h
//  TotalTest
//
//  Created by genilex3 on 16/7/28.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WYCBlurtView : UIView

@property (nonatomic,assign)CGFloat headerImgHeight;
@property (nonatomic,assign)CGFloat iconHeight;
/**
 *  图片url
 */
@property (nonatomic,copy)NSString *imgUrl;
@property (nonatomic,copy)NSString *name;


- (instancetype)initWithFrame:(CGRect)frame WithHeaderImgHeight:(CGFloat)headerImgHeight iconHeight:(CGFloat)iconHeight;

@end

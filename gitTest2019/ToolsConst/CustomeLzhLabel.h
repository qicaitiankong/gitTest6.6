//
//  customeLzhLabel.h
//  Dianxiaoer
//
//  Created by corill002 on 2017/8/7.
//
//通用label

#import <UIKit/UIKit.h>

@interface CustomeLzhLabel : UILabel
//此方法不要改动，涉及的控件太多，自己再写
//size=0(则为默认17),color=nil(默认),aligement=-1|0(则为默认左对齐)
- (instancetype)initWithParamer:(CGFloat)fontSize titleColor:(UIColor*)titleColor aligement:(NSTextAlignment)aligenment;

@end

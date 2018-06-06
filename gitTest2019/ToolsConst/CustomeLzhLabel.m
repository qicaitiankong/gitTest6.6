//
//  customeLzhLabel.m
//  Dianxiaoer
//
//  Created by corill002 on 2017/8/7.
//
//

#import "CustomeLzhLabel.h"

@implementation CustomeLzhLabel
- (instancetype)initWithParamer:(CGFloat)fontSize titleColor:(UIColor*)titleColor aligement:(NSTextAlignment)aligenment
{
    self = [super init];
    if (self) {
        if(fontSize){
              self.font = [UIFont systemFontOfSize:fontSize];
        }
        if(titleColor){
            self.textColor = titleColor;
        }else{
             self.textColor = [UIColor blackColor];
        }
        if(aligenment >= 0){
             self.textAlignment = aligenment;
        }
           
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

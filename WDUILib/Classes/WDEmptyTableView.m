//
//  WDEmptyTableView.m
//  WDUILib_Example
//
//  Created by Wind on 2022/12/24.
//  Copyright © 2022 PureWindSN. All rights reserved.
//

#import "WDEmptyTableView.h"

@interface WDEmptyTableView ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImgView;
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UIButton *reloadBtn;

@property (nonatomic, copy)WDEmptyTableViewBlock action;

@end

@implementation WDEmptyTableView


-(instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"WindEmptyView"
                                              owner:self
                                            options:nil] lastObject];
    }
    return self;
}

- (void)configImage:(NSString *)image
              title:(NSString *)title
           btnTitle:(NSString *)btnTitle
             action:(WDEmptyTableViewBlock)action {
    self.iconImgView.image = [UIImage imageNamed:image];
    self.titleLbl.text = title;
    [self.reloadBtn setTitle:btnTitle forState:UIControlStateNormal];
    self.action = action;
}


@end

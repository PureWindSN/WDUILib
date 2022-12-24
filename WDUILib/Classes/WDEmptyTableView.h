//
//  WDEmptyTableView.h
//  WDUILib_Example
//
//  Created by Wind on 2022/12/24.
//  Copyright © 2022 PureWindSN. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^WDEmptyTableViewBlock)(void);

@interface WDEmptyTableView : UIView

- (void)configImage:(NSString *)image title:(NSString *)title btnTitle:(NSString *)btnTitle action:(WDEmptyTableViewBlock)action;

@end

NS_ASSUME_NONNULL_END

//
//  UICollectionView+Wind.h
//  WDUILib
//
//  Created by Wind on 2023/2/4.
//

#import <UIKit/UIKit.h>
#import "WindEmptyView.h"

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (Wind)

- (void)reloadDataOrEmpty:(Action)action;

@end

NS_ASSUME_NONNULL_END

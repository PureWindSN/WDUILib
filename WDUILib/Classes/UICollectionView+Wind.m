//
//  UICollectionView+Wind.m
//  WDUILib
//
//  Created by Wind on 2023/2/4.
//

#import "UICollectionView+Wind.h"


@implementation UICollectionView (Wind)


- (void)reloadDataOrEmpty:(Action)action{
    WindEmptyView *emptyView;
    BOOL isEmpty = NO;

    if ([self.dataSource respondsToSelector:@selector(numberOfRowsInSection:)]) {
        for (int i = 0; i < self.numberOfSections; i ++) {
            if (![self.dataSource collectionView:self numberOfItemsInSection:i]) {
                isEmpty = YES;
                break;
            }
        }
    }

    
    if (isEmpty) {
        for (UIView *view in self.subviews) {
            if ([view isKindOfClass:[WindEmptyView class]]) {
                emptyView = (WindEmptyView*)view;
                break;
            }
        }
        if (emptyView == nil) {
            emptyView = [[WindEmptyView alloc] init];
            [self addSubview:emptyView];
        }
        [emptyView setHidden:NO];
        emptyView.frame = CGRectMake(0,
                                     0,
                                     self.bounds.size.width,
                                     self.bounds.size.height);
        [emptyView configImage:@"Common_Empty.png" action:^{
            if (action) {
                action();
            }
        }];
    } else {
        for (UIView *view in self.subviews) {
            if ([view isKindOfClass:[WindEmptyView class]]) {
                emptyView =  (WindEmptyView*)view;
                [emptyView setHidden:YES];
            }
        }
    }
    [self reloadData];
}

@end

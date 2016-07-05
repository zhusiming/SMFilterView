//
//  SMFilterView.h
//  SMFilterView
//
//  Created by zsm on 13-8-23.
//  Copyright (c) 2013年 zsm. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SMFilterView;
@protocol SMFilterViewDelegate <NSObject>

//点击事调用的协议方法
- (void)filterView:(SMFilterView *)filterView
didSelectItemOfIndexPath:(NSIndexPath *)indexPath
         itemTitle:(NSString *)itemTitle
AllSelectedIndexPaths:(NSArray *)selectedIndexPaths

        itemTitles:(NSArray *)itemTitles;

@end

@interface SMFilterView : UIView<UITableViewDataSource,UITableViewDelegate>
{
    UIView *_headerView;
    
    UIView *_contentView;
}
@property(nonatomic,assign)id<SMFilterViewDelegate> delegate;
@property (nonatomic,retain)NSArray *items;
@property(nonatomic,retain)NSMutableArray *selectedIndexPaths;
@end

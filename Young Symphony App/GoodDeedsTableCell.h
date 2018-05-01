//
//  GoodDeedsTableCell.h
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/24/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoodDeedsTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *timeOfPostLabel;
@property (nonatomic, weak) IBOutlet UILabel *actionOfGoodDeedLabel;
@property (nonatomic, weak) IBOutlet UIImageView *goodDeedThumbnailImageView;

@end

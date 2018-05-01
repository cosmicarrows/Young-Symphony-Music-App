//
//  GoodDeedsTableCell.m
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/24/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import "GoodDeedsTableCell.h"

@implementation GoodDeedsTableCell


@synthesize timeOfPostLabel = _timeOfPostLabel;
@synthesize actionOfGoodDeedLabel = _actionOfGoodDeedLabel;
@synthesize goodDeedThumbnailImageView = _goodDeedThumbnailImageView;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

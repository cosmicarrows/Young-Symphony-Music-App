//
//  goodDeedsTableViewCell.m
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/22/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import "goodDeedsTableViewCell.h"
#import "GradiatedBackgroundView.h"


@implementation goodDeedsTableViewCell




@synthesize descriptionLabel = _descriptionLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // configure control(s)
        self.descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 10, 300, 30)];
        //self.descriptionLabel.textColor = [UIColor whiteColor];
        self.descriptionLabel.font = [UIFont fontWithName:@"Arial" size:12.0f];
        //self.contentView.backgroundColor = [UIColor blackColor];
        

        
        [self addSubview:self.descriptionLabel];
    }
    return self;
}








- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
    UIView * selectedBackgroundView = [[UIView alloc] init];
    [selectedBackgroundView setBackgroundColor:[UIColor grayColor]];
    [self setSelectedBackgroundView:selectedBackgroundView];
    
    
    
}

@end

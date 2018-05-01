//
//  FirstViewController.h
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/22/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradiatedBackgroundView.h"


@class facebookPictureView;

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>





//creating an instance of the object UITableView
@property (nonatomic, strong) UITableView *goodDeedsTableView;







@end


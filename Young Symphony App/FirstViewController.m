//
//  FirstViewController.m
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/22/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import "FirstViewController.h"
#import "goodDeedsTableViewCell.h"
#import "GradiatedBackgroundView.h"
#import "facebookPictureView.h"
#import "GoodDeedsTableCell.h"


@interface FirstViewController ()



@end

@implementation FirstViewController  {
    UITableView *tableView;
    NSArray *timeOfPostData;
    NSArray *actionOfGoodDeedData;
    NSArray *goodDeedThumbnailsData;
}



//synthesizing the table view that was created in the .h file with @property (nonatomic, strong) UITableView *goodDeedsTableView;
@synthesize goodDeedsTableView;
//...continuing the initialization and allocating of memory on the heap for the UITableView continues in the viewDidLoad area










//Adding this to all tab interface files or .m files in order for each tab to load on the initial load
//Also has the custom properties for each tab
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Good Deeds";
        self.tabBarItem.image = [UIImage imageNamed:@"earth-america-7.png"];
    }
    return self;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    timeOfPostData = [[NSArray alloc] initWithObjects: @"January 22 2015",@"5 hours ago",@"2 minutes ago", nil];
    
    
    
    goodDeedThumbnailsData = [[NSArray alloc] initWithObjects: @"radio_tower-32.png",@"earth-america-7.png",@"film_reel_filled-32.png", nil];
    
    
    
    actionOfGoodDeedData = [[NSArray alloc] initWithObjects: @"Made a New Friend",@"Bankhead!! Cleaning up Bankhead",@"Lovin on em", nil];
    

    
    
    // Find out the path of list of good deeds .plist
    NSString *path = [[NSBundle mainBundle] pathForResource: @"GoodDeedsListing" ofType:@"plist"];

    
    
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    timeOfPostData = [dict objectForKey:@"timeofGoodDeedPost"];
    goodDeedThumbnailsData = [dict objectForKey:@"goodDeedImages"];
    actionOfGoodDeedData = [dict objectForKey:@"goodDeedActions"];
    
    
    
    
    //This line of code is calling the "setupGradients" method below to add a gradient color background to the view
    [self setupGradients];

    
    
    
    
    ///allocating memory on the heap and initializing the UITableView Here
    tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    
    
    // must always set this delegate & dataSource, otherwise the the table will not work!!!!
    tableView.delegate = self;
    tableView.dataSource = self;
    
    
    
    // adding UITableView to FirstViewController
    [self.view addSubview:tableView];
    
    // adding a UITableView Header for the FirstViewController
    UIView *containerView =
    [[UIView alloc]
      initWithFrame:CGRectMake(0, 0, 300, 60)];
    UILabel *headerLabel =
    [[UILabel alloc]
      initWithFrame:CGRectMake(10, 20, 300, 40)];
    headerLabel.text = NSLocalizedString(@"Header for the table", @"");
    headerLabel.textColor = [UIColor whiteColor];
    headerLabel.shadowColor = [UIColor blackColor];
    headerLabel.shadowOffset = CGSizeMake(0, 1);
    headerLabel.font = [UIFont boldSystemFontOfSize:22];
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.textAlignment = NSTextAlignmentCenter;
    [containerView addSubview:headerLabel];
    self->tableView.tableHeaderView = containerView;
    tableView.backgroundColor = [UIColor grayColor];
    
}



//Number of sections for the tableview
- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView
{
    return 1;
}

// number of rows in the section, for now we will have it set to 30 rows
- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}



///This method changes the height of each UItableviewcell
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return 90;
}
 
 
// the cell will be returned to the tableView after each use
- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"GoodDeedsTableCell";
    
    
    
    
    GoodDeedsTableCell *cell = (GoodDeedsTableCell *)[theTableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil)
    
        
    
        {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GoodDeedsTableCell" owner:tableView options:nil];
        cell = [nib objectAtIndex:0];
        }
    
    
    
    

        
        cell.timeOfPostLabel.text = [timeOfPostData objectAtIndex:indexPath.row];


        cell.goodDeedThumbnailImageView.image = [UIImage imageNamed:[goodDeedThumbnailsData objectAtIndex:indexPath.row]];
        cell.actionOfGoodDeedLabel.text = [actionOfGoodDeedData objectAtIndex:indexPath.row];
        
        

        
         //cell = [[GoodDeedsTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    
    
    
    
    //TableviewCell border in between cells, this changes the color in between cells
    tableView.separatorColor = [UIColor blueColor];
    
       
    
    
    
    return cell;
}

















// when user tap the row, what action you want to perform
- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"selected row %ld - 1", (long)indexPath.row);
    
    
       
}


//This is the method for setting up the blue Facebook colored background gradient
- (void) setupGradients {
    CAGradientLayer *gradientLayer = [GradiatedBackgroundView blueGradient];
    gradientLayer.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view.layer insertSublayer:gradientLayer atIndex:0];
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

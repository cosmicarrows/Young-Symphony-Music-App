//
//  FourthViewController.m
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/22/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController



//Adding this to all tab interface files or .m files in order for each tab to load on the initial load
//Also has the custom properties for each tab
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Spotify Search";
        self.tabBarItem.image = [UIImage imageNamed:@"satellite_in_orbit-32.png"];
        
        
        //Increasing the size of the UITabBar Font
       // [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:12]} forState:UIControlStateNormal];
        
        
        
               
    }
    return self;
}










- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //This commened out line of code set the background color to a default iOS purple
    //self.view.backgroundColor = [UIColor purpleColor];
    
    
    
    //This line of code is calling the "setupGradients" method below to add a gradient color background to the view
    [self setupGradients];


}



//This is the method for setting up the green spotify background gradient
- (void) setupGradients {
    CAGradientLayer *gradientLayer = [GradiatedBackgroundView greenGradient];
    gradientLayer.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view.layer insertSublayer:gradientLayer atIndex:0];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

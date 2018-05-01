//
//  ThirdViewController.m
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/22/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController


//Adding this to all tab interface files or .m files in order for each tab to load on the initial load
//Also has the custom properties for each tab
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Radio Buzz";
        self.tabBarItem.image = [UIImage imageNamed:@"radio_tower-32.png"];
    }
    return self;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //This commented out line of code sets the background color of the view to a default ios color 
    //self.view.backgroundColor = [UIColor greenColor];
    
    
    //This line of code is calling the "setupGradients" method below to add a gradient color background to the view
    [self setupGradients];
    
        
}



//This is the method for setting up the purple radioshow background gradient
- (void) setupGradients {
    CAGradientLayer *gradientLayer = [GradiatedBackgroundView purpleGradient];
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

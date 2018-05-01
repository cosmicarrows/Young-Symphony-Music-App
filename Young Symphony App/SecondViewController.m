//
//  SecondViewController.m
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/22/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController


//Adding this to all tab interface files or .m files in order for each tab to load on the initial load
//Also has the custom properties for each tab
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Watch TV";
        self.tabBarItem.image = [UIImage imageNamed:@"film_reel_filled-32.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //This commenented out line of code adds a basic ios background color to the view
    //self.view.backgroundColor = [UIColor orangeColor];
    
    //This line of code is calling the "setupGradients" method below to add a gradient color background to the view
    [self setupGradients];


}

//This is the method for setting up the red Youtube background gradient
- (void) setupGradients {
    CAGradientLayer *gradientLayer = [GradiatedBackgroundView redGradient];
    gradientLayer.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view.layer insertSublayer:gradientLayer atIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  GradiatedBackgroundView.m
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/23/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import "GradiatedBackgroundView.h"


@implementation GradiatedBackgroundView



+ (CAGradientLayer*) redGradient {
    

    
    UIColor *colorOne = [UIColor colorWithRed:(202/255.0) green:(25/255.0) blue:(25/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(101/255.0)  green:(10/255.0)  blue:(10/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;
}




+ (CAGradientLayer*) greenGradient {
  
    
    UIColor *colorOne = [UIColor colorWithRed:(244/255.0) green:(251/255.0) blue:(230/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(128/255.0)  green:(183/255.0)  blue:(25/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;
}






+ (CAGradientLayer*) blueGradient {
    
    
    
    UIColor *colorOne = [UIColor colorWithRed:(118/255.0) green:(157/255.0) blue:(255/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(34/255.0)  green:(81/255.0)  blue:(136/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;
}





+ (CAGradientLayer*) purpleGradient {
    
    
    
    UIColor *colorOne = [UIColor colorWithRed:(216/255.0) green:(0/255.0) blue:(255/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(141/255.0)  green:(0/255.0)  blue:(50/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;
}

@end

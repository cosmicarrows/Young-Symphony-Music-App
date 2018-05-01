//
//  GradiatedBackgroundView.h
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/23/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface GradiatedBackgroundView : NSObject

//Gradient for Youtube View
+(CAGradientLayer*) redGradient;
//Gradient for Spotify View
+(CAGradientLayer*) greenGradient;
//Gradient for Good Deeds View
+(CAGradientLayer*) blueGradient;
//Gradient for Radio View
+(CAGradientLayer*) purpleGradient;







@end

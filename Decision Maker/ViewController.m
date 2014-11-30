//
//  ViewController.m
//  Decision Maker
//
//  Created by Carlos Eduardo López Mercado on 11/29/14.
//  Copyright (c) 2014 Carlos Eduardo López Mercado. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+SVG.h"
#import "UIColor+Pastel.h"
#import "CLYUtils.h"


@interface ViewController ()

@property(nonatomic, strong) CLYUtils *utils;
@property(nonatomic, strong) UIImage *image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.utils = [[CLYUtils alloc] init];

    self.ideaLabel.font = [UIFont fontWithName:@"HipsterishFontNormal" size:50];

    [self setPaletteInViewWithInitialValue:YES];

    self.carView.layer.cornerRadius = 5;
    self.carView.clipsToBounds;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setPaletteInViewWithInitialValue:(BOOL)initial {

    NSArray *palette = [self.utils palette];


    self.view.backgroundColor = palette[0];
    self.carView.backgroundColor = palette[0];

    self.ideaLabel.textColor = palette[2];
    self.appTitle.textColor = palette[2];


    if (initial) {
        self.ideaLabel.text = [self.utils getShakeMessage];
        self.image = [UIImage imageWithSVGNamed:@"bulb"
                                     targetSize:CGSizeMake(200, 200)
                                      fillColor:palette[2]];
    } else {
        self.ideaLabel.text = [self.utils getQuote];
        self.image = [UIImage imageWithSVGNamed:[self.utils getSVG]
                                     targetSize:CGSizeMake(200, 200)
                                      fillColor:palette[2]];
    }

    self.iconIV.image = self.image;

}

#pragma mark - Shake

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self setPaletteInViewWithInitialValue:NO];
    }
}

@end

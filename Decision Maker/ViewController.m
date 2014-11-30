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

@property (nonatomic, strong) CLYUtils *utils;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.utils = [[CLYUtils alloc] init];

    UIImage* image = [UIImage imageWithSVGNamed:@"arrow up"
                                     targetSize:CGSizeMake(200, 200)
                                      fillColor:[UIColor whiteColor]];

    self.iconIV.image = image;


    [self setPaletteInView];

    self.carView.layer.cornerRadius = 10;
    self.carView.clipsToBounds;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) setPaletteInView{

    NSArray *palette = [self.utils palette];

    self.carView.backgroundColor = palette[0];
   // self.view.backgroundColor = palette[0];
    self.ideaLabel.text = [self.utils getQuote];

}

#pragma mark - Shake

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self setPaletteInView];
    }
}

@end

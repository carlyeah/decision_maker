//
//  CLYUtils.m
//  Decision Maker
//
//  Created by Carlos Eduardo López Mercado on 11/29/14.
//  Copyright (c) 2014 Carlos Eduardo López Mercado. All rights reserved.
//

#import "CLYUtils.h"
#import <UIKit/UIKit.h>

#define ARC4RANDOM_MAX      0x100000000
#define SATURATION      0.5
#define BRIGHTNESS      1.0


@implementation CLYUtils

- (instancetype)init {

    if (_listOfQuotes == nil) {
        _listOfQuotes = [self loadListOfQuotes];
    }

    if (_listOfSVG == nil) {
        _listOfSVG = [self loadSVGList];
    }

    return self;

}

- (NSArray *)palette {

    CGFloat hue = ((CGFloat) arc4random() / ARC4RANDOM_MAX);

    UIColor *backgroundColor = [UIColor colorWithHue:hue
                                          saturation:SATURATION
                                          brightness:BRIGHTNESS
                                               alpha:1.000];

    UIColor *mainColor = [UIColor colorWithHue:(CGFloat) (hue - 1.0)
                                    saturation:SATURATION
                                    brightness:BRIGHTNESS
                                         alpha:1.0];

    UIColor *titleColor = [UIColor colorWithHue:hue
                                     saturation:(CGFloat) (SATURATION + 0.3)
                                     brightness:0.8
                                          alpha:1.0];

    return @[backgroundColor, mainColor, titleColor];
}

- (NSString *)getQuote {
    return self.listOfQuotes[arc4random_uniform(self.listOfQuotes.count + 1)];
}

- (NSString *)getSVG {
    return self.listOfSVG[arc4random_uniform(self.listOfSVG.count)];
}

- (NSString *)getShakeMessage {
    return self.listOfQuotes[0];
}


- (NSMutableArray *)loadSVGList {
    NSMutableArray *result = [NSMutableArray array];
    [[[NSBundle mainBundle] pathsForResourcesOfType:@"svg" inDirectory:nil] enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
        NSString *path = [obj lastPathComponent];
        NSArray *splitFileName = [path componentsSeparatedByString:@"."];
        [result addObject:splitFileName[0]];
    }];

    return result;
}


- (NSArray *)loadListOfQuotes {

    return @[
            NSLocalizedString(@"shake_me", @"shake"),
            NSLocalizedString(@"force_first", @"force_1"),
            NSLocalizedString(@"force_second", @"force_2"),
            NSLocalizedString(@"ithink_first", @"force_2"),
            NSLocalizedString(@"ithink_second", @"force_2"),
            NSLocalizedString(@"ifeel_first", @"force_2"),
            NSLocalizedString(@"ifeel_second", @"force_2"),
            NSLocalizedString(@"light_first", @"force_2"),
            NSLocalizedString(@"light_second", @"force_2"),
            NSLocalizedString(@"doubt_first", @"force_2"),
            NSLocalizedString(@"doubt_second", @"force_2"),
            NSLocalizedString(@"graduate_first", @"force_2"),
            NSLocalizedString(@"graduate_second", @"force_2"),
            NSLocalizedString(@"damn", @"force_2"),
            NSLocalizedString(@"corleone_first", @"force_2"),
            NSLocalizedString(@"corleone_second", @"force_2"),
            NSLocalizedString(@"toto_first", @"force_2"),
            NSLocalizedString(@"toto_second", @"force_2"),
            NSLocalizedString(@"talkin", @"force_2"),
            NSLocalizedString(@"et_first", @"force_2"),
            NSLocalizedString(@"et_second", @"force_2"),
            NSLocalizedString(@"oz_first", @"force_2"),
            NSLocalizedString(@"oz_second", @"force_2"),
            NSLocalizedString(@"truth_first", @"force_2"),
            NSLocalizedString(@"truth_second", @"force_2"),
            NSLocalizedString(@"dead_options", @"force_2"),
            NSLocalizedString(@"frank_first", @"force_2"),
            NSLocalizedString(@"frank_second", @"force_2"),
            NSLocalizedString(@"paccino_first", @"force_2"),
            NSLocalizedString(@"paccino_second", @"force_2"),
            NSLocalizedString(@"tony_first", @"force_2"),
            NSLocalizedString(@"tony_second", @"force_2")
    ];


}


@end

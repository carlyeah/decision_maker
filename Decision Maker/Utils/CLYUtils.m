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

    return self;

}

-(NSArray *)palette {

    CGFloat hue = ((CGFloat) arc4random() / ARC4RANDOM_MAX);

    UIColor *backgroundColor = [UIColor colorWithHue:hue
                                          saturation:SATURATION
                                          brightness:BRIGHTNESS
                                               alpha:1.000];

    UIColor *mainColor = [UIColor colorWithHue:hue
                                    saturation:SATURATION
                                    brightness:BRIGHTNESS
                                         alpha:1.0];

    UIColor *titleColor = [UIColor colorWithHue:hue
                                     saturation:SATURATION
                                     brightness:BRIGHTNESS
                                          alpha:1.0];

    return @[backgroundColor, mainColor, titleColor];
}

- (NSString *)getQuote {
    return self.listOfQuotes[arc4random_uniform(self.listOfQuotes.count)];
}


- (NSArray *)loadListOfQuotes {

    return @[
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

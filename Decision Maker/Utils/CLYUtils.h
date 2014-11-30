//
//  CLYUtils.h
//  Decision Maker
//
//  Created by Carlos Eduardo López Mercado on 11/29/14.
//  Copyright (c) 2014 Carlos Eduardo López Mercado. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLYUtils : NSObject

@property (strong, nonatomic) NSArray *listOfQuotes;
@property (strong, nonatomic) NSMutableArray *listOfSVG;

-(NSArray *)palette;
-(NSString *)getQuote;
-(NSString *)getSVG;
-(NSString *)getShakeMessage;



@end

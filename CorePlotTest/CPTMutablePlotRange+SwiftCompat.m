//
//  CPTMutablePlotRange+SwiftCompat.m
//  CorePlotTest
//
//  Created by Al Wold on 8/29/14.
//  Copyright (c) 2014 Al Wold. All rights reserved.
//

#import "CPTMutablePlotRange+SwiftCompat.h"

@implementation CPTMutablePlotRange (SwiftCompat)

- (void)setLengthFloat:(float)lengthFloat
{
    NSNumber *number = [NSNumber numberWithFloat:lengthFloat];
    [self setLength:[number decimalValue]];
}

@end

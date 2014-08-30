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
    NSLog(@"length is first %@", [NSDecimalNumber decimalNumberWithDecimal:self.length]);
    NSNumber *number = [NSNumber numberWithFloat:lengthFloat];
    NSLog(@"setting length: %@", number);
    [self setLength:[number decimalValue]];
    NSLog(@"length is now %@", [NSDecimalNumber decimalNumberWithDecimal:self.length]);
    NSLog(@"or %f", self.lengthDouble);
}

@end

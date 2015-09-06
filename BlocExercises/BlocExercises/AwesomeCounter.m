//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger lowerBound = (number <= otherNumber) ? number : otherNumber;
    NSInteger upperBound = (otherNumber >= number) ? otherNumber : number;
    
    NSString *result = @"";
    
    for (NSInteger n = lowerBound; n <= upperBound; n++) {
        result = [result stringByAppendingFormat:@"%ld", (long)n];
    }
    
    return result;
}

@end

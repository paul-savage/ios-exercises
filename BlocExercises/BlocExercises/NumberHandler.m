//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    return [NSNumber numberWithInteger:[number integerValue] * 2];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger lowerBound = (number <= otherNumber) ? number : otherNumber;
    NSInteger upperBound = (otherNumber >= number) ? otherNumber : number;
    
    NSMutableArray *numbers = [NSMutableArray array];
    
    for (NSInteger n = lowerBound; n <= upperBound; n++) {
        [numbers addObject:[NSNumber numberWithInteger:n]];
    }
    
    return [numbers copy];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSInteger lowestNumber = [arrayOfNumbers[0] integerValue];
    
    for (NSNumber *nextNumber in arrayOfNumbers) {
        
        NSInteger nextValue = [nextNumber integerValue];
        
        if (nextValue < lowestNumber) {
            lowestNumber = nextValue;
        }
    }
    
    return lowestNumber;
}

@end

//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    
    self.rememberThisArrayForLater = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    
    self.duplicateThisArrayForLater = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    
    self.rememberCGFloatForLater = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {

    return self.rememberThisArrayForLater;
}

- (NSMutableArray *) arrayYouShouldCopy {

    return self.duplicateThisArrayForLater;
}

- (CGFloat) floatYouShouldRemember {

    return self.rememberCGFloatForLater;
}

@end
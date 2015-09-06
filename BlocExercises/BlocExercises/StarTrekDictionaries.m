//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    return characterDictionary[@"favorite drink"];;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *drinksArray = [[NSMutableArray alloc] init];
    
    /* Strictly speaking, the order of enumeration is unpredictable, so this might not work */
    
    for (NSDictionary *characterDictionary in charactersArray) {
        [drinksArray addObject:characterDictionary[@"favorite drink"]];
    }
    
    /* To be pedantic, convert the NSMutableArray to NSArray using copy method, since the method signature specifies NSArray.
       Probably ok to just return drinksArray, as NSMutableArray inherits from NSArray anyway. */
    
    return [drinksArray copy];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *newDictionary = [NSMutableDictionary dictionaryWithDictionary:characterDictionary];
    
    [newDictionary setObject:@"To be, or not to be" forKey:@"quote"];
    
    return [newDictionary copy];
}

@end

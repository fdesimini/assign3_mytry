//
//  main.m
//  assign3_mytry
//
//  Created by Frank Desimini on 2015-04-07.
//  Copyright (c) 2015 Frank Desimini. All rights reserved.
//

#import <Foundation/Foundation.h>

//this is an inline comment

/* this is a block of comments.
 It can spell multiple lines. */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Variables example
        
        double odometer = 9200.8;
        int odometerAsInteger = (int)odometer;
        
        NSLog(@"You've driven %.1f miles", odometer);        // 9200.8
        NSLog(@"You've driven %d miles", odometerAsInteger); // 9200
       
    }
    
    //Arithmetic
    
    NSLog(@"6 + 2 = %d", 6 + 2);  //8
    NSLog(@"6 - 2 = %d", 6-2);
    NSLog(@"6 * 2 = %d", 6*2);
    NSLog(@"6 / 2 = %d", 6 /2);
    NSLog(@"6 %% 2 = %d", 6 % 2);
    
    
    //Conditional example
    
    int modelYear = 1990;
    if (modelYear < 1967) {
        NSLog(@"That car is an antique!!!");
    } else if (modelYear <= 1991) {
        NSLog(@"That car is a classic!");
    } else if (modelYear == 2013) {
        NSLog(@"That's a brand new car!");
    } else {
        NSLog(@"There's nothing special about that car.");
    }
    
    
    //Switch Case example
    
    switch (modelYear) {
        case 1987:
            NSLog(@"Your car is from 1987.");
            break;
        case 1988:
            NSLog(@"Your car is from 1988.");
            break;
        case 1989:
        case 1990:
            NSLog(@"Your car is from 1989 or 1990.");
            break;
        default:
            NSLog(@"I have no idea when your car was made.");
            break;
    }
    
    
    NSArray *models = @[@"Ford", @"Honda", @"Nissan", @"Porsche"];
    for (id model in models) {
        NSLog(@"%@", model);
    }
    
//Loops example - While
    
    int modelYear = 1990;
    int i=0;
    while (i<5) {
        if (i ==3) {
            NSLog(@"Aborting the while-loop");
            break;
        }
        NSLog(@"Current year: %d", modelYear +1);
        i++;
        }
    

    
    
    return 0;
}

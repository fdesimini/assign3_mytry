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

int main2(int argc, const char * argv[]) {
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
    
    
//Loops example - While
    
    int i=0;
    while (i<5) {
        if (i ==3) {
            NSLog(@"Aborting the while-loop");
            break;
        }
        NSLog(@"Current year: %d", modelYear +i);
        i++;
        }
    
//Loops example - For
    
    for (int i=0; i<5; i++) {
        if (i == 3) {
            NSLog(@"Skipping a for-loop iteration");
                  continue;
                  }
                  
                  NSLog(@"Current year: %d", modelYear +i);
    
    }

// For-in loops ("Fast-enumeration," specific to Objective-C)
    
    NSArray *models = @[@"Ford", @"Honda", @"Nissan", @"Porsche"];
    for (id model in models) {
        NSLog(@"%@", model);
    }
    
 //Macros
#define PI 3.14159
#define RAD_TO_DEG(radians) (radians * (180 / PI))
    
    double angle = PI /2;
    NSLog(@"%f", RAD_TO_DEG(angle));
    
    //Typedef example
    
    {
    typedef unsigned char ColorComponent;
    
    ColorComponent red = 255;
    ColorComponent green = 160;
    ColorComponent blue = 0;
    NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)", red, green, blue);
    }
    
    //Struct example
    
    typedef struct {
        unsigned char red;
        unsigned char green;
        unsigned char blue;
        
    }Color;
    
    {Color carColor = {255, 160, 0};
        NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)", carColor.red, carColor.blue, carColor.green);
    }
    
    //Enums
    typedef enum {
        FORD,
        HONDA,
        NISSAN,
        PORSCHE
    } CarModel;
    
    {
        CarModel myCar = NISSAN;
        switch (myCar) {
            case FORD:
            case PORSCHE:
                NSLog(@"You like Western cars?");
                break;
            case HONDA:
            case NISSAN:
                NSLog(@"You like Japanese cars?");
                break;
            default:
                break;
        }
    }
    
    //Primitive Arrays
    int years[4] = {1968, 1970, 1989, 1999};
    years[0]=1967;
    for (int i=0; i<4; i++) {
        NSLog(@"they year at index %d is: %d", i, years[i]);
    }
    
    //Pointers
    int year = 1967;          // Define a normal variable
    int *pointer;             // Declare a pointer that points to an int
    pointer = &year;          // Find the memory address of the variable
    NSLog(@"%d", *pointer);   // Dereference the address to get its value
    *pointer = 1990;          // Assign a new value to the memory address
    NSLog(@"%d", year);       // Access the value via the variable
    
    char model[5] = {'H', 'o', 'n', 'd', 'a'};
    char *modelPointer = &model[0];
    for (int i=0; i<5; i++) {
        NSLog(@"Value at memory address %p is %c",
              modelPointer, *modelPointer);
        modelPointer++;
    }
    NSLog(@"The first letter is %c", *(modelPointer - 5));
    
    //Null Pointer
   
    NSLog(@"%d", *pointer);
    pointer = nil;
    
    //Void Pointer
   
    void *genericPointer = &year;
    int *intPointer = (int *)genericPointer;
    NSLog(@"%d", *intPointer);
    
    //Pointers in objective C
    
    NSString *anObject;    // An Objective-C object
    anObject = NULL;       // This will work
    anObject = nil;        // But this is preferred
    int *aPointer;         // A plain old C pointer
    aPointer = nil;        // Don't do this
    aPointer = NULL;       // Do this instead
    
    return 0;
}

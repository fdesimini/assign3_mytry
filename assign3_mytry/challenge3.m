//
//  challenge3.m
//  assign3_mytry
//
//  Created by Frank Desimini on 2015-04-08.
//  Copyright (c) 2015 Frank Desimini. All rights reserved.
//

#import <Foundation/Foundation.h>

/* I would expect this following program:

 int main (int argc, const char * argv[]) {
 @autoreleasepool {
 int i;
 i = 1;
 NSLog (@"Testing...");
 NSLog (@"....%i", i);
 NSLog (@"...%i", i + 1);
 NSLog (@"..%i", i + 2);
 }
 return 0;
 }

to output the following:

Testing.......1...2..3
*/
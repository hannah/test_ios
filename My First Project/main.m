//
//  main.m
//  My First Project
//
//  Created by H Zabarsky on 7/30/14.
//  Copyright (c) 2014 H Zabarsky. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int answer = 0;
        int guess = 0;
        int turn = 0;
        answer = arc4random() % 100 + 1;
        
        NSLog(@"Pick a number between 1-100");
        while (guess != answer) {
            scanf("%i", &guess);
            
            if ( guess > answer) {
                NSLog(@"Lower!");
            }
            else if ( guess < answer) {
                NSLog(@"Higher!");
            }
            else {
                NSLog(@"Correct! The answer was %i", answer);
                NSLog(@"It took you %i tries to get the correct answer!", turn);
            }
            turn++;

        }
        
        
    }
    return 0;
}


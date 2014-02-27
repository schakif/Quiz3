//
//  main.m
//  Quiz3
//
//  Created by Steve Chakif on 1/31/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Quiz3AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        //return UIApplicationMain(argc, argv, nil, NSStringFromClass([Quiz3AppDelegate class]));
        NSLog(@"Steven");
        NSString *firstName = @"Steven";
        NSLog(@"%@", firstName);
        NSNumber *val = @200;
        NSLog(@"%@", val);
        
        NSArray *fruits = @[@"Apple", @"Grape", @"Pear"];
        for (NSString *fruit in fruits){
            NSLog(@"%@", fruit);
        }
        
        NSDictionary *fruitSweetness = @{@"Apple": @3, @"Grape":@5, @"Pear":@8};
        NSLog(@"%@", fruitSweetness[@"Grape"]);
        NSUInteger myUInteger = 123;
        NSLog(@"%d", myUInteger);
        
        NSNumber *a = @10;
        NSNumber *b = @4;
        NSUInteger aInt = [a unsignedIntegerValue];
        NSUInteger bInt = [b unsignedIntegerValue];
        NSUInteger ab = aInt * bInt;
        NSLog(@"%d", ab);
        
        NSString *lastName = @"Chakif";
        NSString *fullName = [[firstName stringByAppendingString:@" "] stringByAppendingString:lastName];
        NSLog(@"%@", fullName);
        
        for (NSString *fruit in fruitSweetness){
            NSNumber *rating = fruitSweetness[fruit];
            if ([rating intValue] < 4){
                NSLog(@"%@ Is Not Sweet", fruit);
            } else if ([rating intValue] < 7) {
                NSLog(@"%@ is SomewhatSweet", fruit);
            } else {
                NSLog(@"%@ is Sweet", fruit);
            }
        }
        
        typedef NS_ENUM(NSInteger, DayOfWeek){
            MON = 1,
            TUE = 2,
            WED = 3,
            THU = 4,
            FRI = 5,
            SAT = 6,
            SUN = 7
            
        };
        
        DayOfWeek currentDay = FRI;
        
        void(^myFirstBlock)(void) = ^{
            NSLog(@"Hello World");
        };
        myFirstBlock();
        
        void(^mySecondBlock)(NSString *) = ^(NSString *str) {
            NSLog(@"%@", str);
        };
        
        mySecondBlock(@"Hello");
        mySecondBlock(@"World");
        
        
    }
}

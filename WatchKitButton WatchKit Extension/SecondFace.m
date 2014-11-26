//
//  SecondFace.m
//  WatchKitButton
//
//  Created by New on 11/26/14.
//
//

#import "SecondFace.h"

@interface SecondFace()

@property (weak, nonatomic) IBOutlet WKInterfaceLabel * secondLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceButton * secondButton;
@property (nonatomic) int secondCounter;

@end

@implementation SecondFace

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (IBAction)changeColor:(id)sender
{
    if (_secondCounter == 0)
    {
        [self.secondLabel setTextColor:[UIColor purpleColor]];
        [self.secondLabel setText:@"!!HELL NO!!"];
        ++_secondCounter;
    }
    else
    {
        [self.secondLabel setTextColor:[UIColor whiteColor]];
        [self.secondLabel setText:@"Am I Happy?"];
        --_secondCounter;
    }
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
    _secondCounter = 0;
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}


@end

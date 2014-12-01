//
//  SecondFace.m
//  WatchKitButton
//
//  Created by New on 11/26/14.
//
//

#import "SecondFace.h"

@interface SecondFace()

// connected to main interface in storyboard
// swipe screen to change, no button needed
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

// single button on watch face
- (IBAction)changeColor:(id)sender
{
    // change text and color of label, depending on what state the label is in
    // maybe use mod instead to keep track?
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
    
    // initialize the counter, so nothing weird happens
    _secondCounter = 0;
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}


@end

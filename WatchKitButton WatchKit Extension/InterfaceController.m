//
//  InterfaceController.m
//  WatchKitButton WatchKit Extension
//
//  Created by New on 11/26/14.
//
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceLabel * label;
@property (weak, nonatomic) IBOutlet WKInterfaceButton * button;
@property (nonatomic) int counter;

@end


@implementation InterfaceController

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
    if (_counter == 0)
    {
        [self.label setTextColor:[UIColor purpleColor]];
        [self.label setText:@"!!YES!!"];
        ++_counter;
    }
    else
    {
        [self.label setTextColor:[UIColor whiteColor]];
        [self.label setText:@"Am I Mad?"];
        --_counter;
    }
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    
    // initialize the counter, so nothing weird happens
    NSLog(@"%@ will activate", self);
    _counter = 0;
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end




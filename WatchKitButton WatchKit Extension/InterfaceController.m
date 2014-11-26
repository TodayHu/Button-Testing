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

- (IBAction)changeColor:(id)sender
{
    if (_counter == 0)
    {
        [self.label setTextColor:[UIColor redColor]];
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
    NSLog(@"%@ will activate", self);
    _counter = 0;
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end




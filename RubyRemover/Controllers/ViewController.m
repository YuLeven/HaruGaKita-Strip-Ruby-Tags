//
//  ViewController.m
//  RubyRemover
//
//  Created by Yuri on 2018-01-26.
//  Copyright © 2018 Yuri. All rights reserved.
//

#import "ViewController.h"
#import "../Util/TextStripper.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

// Clears text on the main text field
- (IBAction)clearText:(NSButton *)sender {
    [_mainTextField setStringValue:@" "];
}

// Sets the stripped text to the view
- (IBAction)removeRuby:(NSButton *)sender {
    NSString *text = [_mainTextField stringValue];
    [_mainTextField setStringValue:[TextStripper stripTextFromRubyMarkings:text]];
}
@end

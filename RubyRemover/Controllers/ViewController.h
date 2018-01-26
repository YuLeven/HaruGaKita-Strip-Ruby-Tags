//
//  ViewController.h
//  RubyRemover
//
//  Created by Yuri on 2018-01-26.
//  Copyright © 2018 Yuri. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *mainTextField;
- (IBAction)clearText:(NSButton *)sender;
- (IBAction)removeRuby:(NSButton *)sender;
@end


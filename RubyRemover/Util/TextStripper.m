//
//  TextStripper.m
//  RubyRemover
//
//  Created by Yuri on 2018-01-26.
//  Copyright © 2018 Yuri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextStripper.h"

@implementation TextStripper

// Removes Ruby (furigana) from the text in the main text field
+ (NSString *)stripTextFromRubyMarkings:(NSString *)baseText {
    //Matches text contained between the <ruby> and </ruby> tags
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"</?ruby>|【.*?】|</?r[b|p]>"
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                             error:&error];
    
    if (error) {
        NSLog(@"Failed to strip message with error:");
        NSLog(@"%@", error);
        return @"";
    }
    
    return [regex stringByReplacingMatchesInString:baseText
                                           options:0
                                             range:NSMakeRange(0, baseText.length)
                                      withTemplate:@""];
}

@end

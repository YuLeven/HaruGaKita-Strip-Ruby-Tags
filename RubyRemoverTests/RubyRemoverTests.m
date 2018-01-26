//
//  RubyRemoverTests.m
//  RubyRemoverTests
//
//  Created by Yuri on 2018-01-26.
//  Copyright © 2018 Yuri. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TextStripper.h"

@interface RubyRemoverTests : XCTestCase

@end

@implementation RubyRemoverTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShouldStripRubyMarkingsCorrectly {
    NSString *rubyText = @"<ruby><rb>兄</rb><rp>【</rp><rt>あに</rt><rp>】</rp></ruby>は";
    NSString *strippedText = [TextStripper stripTextFromRubyMarkings:rubyText];
    
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"</?ruby>|【.*?】|</?r[b|p]>"
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                             error:&error];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:strippedText options:0 range:NSMakeRange(0, strippedText.length)];
    
    //Not even one ruby should remain afterwards
    XCTAssertTrue(numberOfMatches == 0);
}

@end

//
//  TextStripper.h
//  RubyRemover
//
//  Created by Yuri on 2018-01-26.
//  Copyright © 2018 Yuri. All rights reserved.
//

#ifndef TextStripper_h
#define TextStripper_h
@interface TextStripper : NSObject
+ (NSString*)stripTextFromRubyMarkings:(NSString *)baseText;
@end

#endif /* TextStripper_h */

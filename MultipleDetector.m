//
//  MultipleDetector.m
//  DetectMe
//
//  Created by Josep Marc Mingot Hidalgo on 13/11/13.
//  Copyright (c) 2013 Josep Marc Mingot Hidalgo. All rights reserved.
//

#import "MultipleDetector.h"
#import "Detector.h"
#import "User.h"


@implementation MultipleDetector

@dynamic image;
@dynamic name;
@dynamic uuid;
@dynamic author;
@dynamic detectors;

- (void)awakeFromInsert;
{
    // Store UUID for each MulitpleDetector to identify it
    [super awakeFromInsert];
    CFUUIDRef UUID = CFUUIDCreate(kCFAllocatorDefault);
    CFStringRef UUIDString = CFUUIDCreateString(kCFAllocatorDefault,UUID);
    [self setValue:(__bridge NSString *)UUIDString forKey:@"uuid"];
}

@end

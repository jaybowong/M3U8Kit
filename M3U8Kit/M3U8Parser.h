//
//  M3U8Parser.h
//  M3U8Kit
//
//  Created by Oneday on 13-1-11.
//  Copyright (c) 2013年 0day. All rights reserved.
//

#import <Foundation/Foundation.h>

@class M3U8SegmentInfoList;

NS_ASSUME_NONNULL_BEGIN


@interface M3U8Parser : NSObject

+ (nullable M3U8SegmentInfoList *)m3u8SegmentInfoListFromPlanString:(NSString *)m3u8String;
+ (nullable M3U8SegmentInfoList *)m3u8SegmentInfoListFromData:(NSData *)m3u8Data;

@end


NS_ASSUME_NONNULL_END
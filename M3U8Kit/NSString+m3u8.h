//
//  NSString+m3u8.h
//  M3U8Kit
//
//  Created by Oneday on 13-1-11.
//  Copyright (c) 2013年 0day. All rights reserved.
//

#import <Foundation/Foundation.h>

@class M3U8SegmentInfoList;

NS_ASSUME_NONNULL_BEGIN


@interface NSString (m3u8)

- (nullable M3U8SegmentInfoList *)m3u8SegementInfoListValue;

@end


NS_ASSUME_NONNULL_END
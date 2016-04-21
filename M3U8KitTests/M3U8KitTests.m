//
//  M3U8KitTests.m
//  M3U8KitTests
//
//  Created by Jaybo Wong on 21/4/2016.
//  Copyright © 2016 0day. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "M3U8SegmentInfoList.h"
#import "NSString+m3u8.h"

@interface M3U8KitTests : XCTestCase
@property (nonatomic, copy) NSString *m3u8Content;
@end

@implementation M3U8KitTests

- (void)setUp {
	[super setUp];
	self.m3u8Content = @"#EXTM3U\n#EXT-X-VERSION:3\n#EXT-X-MEDIA-SEQUENCE:0\n#EXT-X-ALLOW-CACHE:YES\n#EXT-X-TARGETDURATION:130\n#EXTINF:120.080000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000000.ts\n#EXTINF:129.880000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000001.ts\n#EXTINF:120.000000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000002.ts\n#EXTINF:112.520000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000003.ts\n#EXTINF:118.000000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000004.ts\n#EXTINF:120.000000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000005.ts\n#EXTINF:128.800000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000006.ts\n#EXTINF:113.800000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000007.ts\n#EXTINF:120.000000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000008.ts\n#EXTINF:122.040000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000009.ts\n#EXTINF:117.120000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000010.ts\n#EXTINF:124.000000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000011.ts\n#EXTINF:120.000000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000012.ts\n#EXTINF:28.680000,\nhttp://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000013.ts\n#EXT-X-ENDLIST";
}

- (void)tearDown {
	[super tearDown];
}

- (void)validateInfoList:(M3U8SegmentInfoList *)list {
	XCTAssertTrue(nil != list);
	XCTAssertTrue(list.count == 14);
	XCTAssertTrue([list segmentInfoAtIndex:0].duration == 120.08);
	XCTAssertTrue([[list segmentInfoAtIndex:0].mediaURL isEqual:[NSURL URLWithString:@"http://7vil5o.com2.z0.glb.qiniucdn/OYBtgr9kCBCuKl2Q9gawQLoTnWo=/li9Png8KK3Wy6Yny9ihcIGNUZ1BQ/000000.ts"]]);
}

- (void)testStringCategory {
	M3U8SegmentInfoList *list = [self.m3u8Content m3u8SegementInfoListValue];
	XCTAssertTrue(nil != list);
	[self validateInfoList:list];
}

- (void)testNSURLCategory {
	// TODO:
}

- (void)testM3U8ParserParsingString {
	// TODO:
}

- (void)testM3U8ParserParsingData {
	// TODO:
}

@end

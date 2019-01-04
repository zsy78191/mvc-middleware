//
//  mvc_middlewareTests.m
//  mvc-middlewareTests
//
//  Created by 张超 on 2019/1/4.
//  Copyright © 2019 orzer. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MVCKeyValue.h"

@interface mvc_middlewareTests : XCTestCase

@end

@implementation mvc_middlewareTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [MVCKeyValue setBool:YES forKey:@"1"];
    [MVCKeyValue setInt:2 forKey:@"2"];
    [MVCKeyValue setFloat:3.1 forKey:@"3"];
    [MVCKeyValue setString:@"321" forKey:@"4"];
    
 
    
    XCTAssertTrue([MVCKeyValue getIntforKey:@"1"]);
    XCTAssertTrue([MVCKeyValue getIntforKey:@"2"] == 2);
    XCTAssertTrue([MVCKeyValue getFloatforKey:@"3"] - 3.1 < 0.000001);
    XCTAssertTrue([[MVCKeyValue getStringforKey:@"4"] isEqualToString:@"321"]);
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

//
//  cookieUITests.m
//  cookieUITests
//
//  Created by Jeremy Mackey on 10/6/15.
//  Copyright © 2015 Jeremy Mackey. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface cookieUITests : XCTestCase

@end

@implementation cookieUITests

- (void)setUp {
    [super setUp];
    
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//- (void)testExample {
//    // Use recording to get started writing UI tests.
//    // Use XCTAssert and related functions to verify your tests produce the correct results.
//
//
//
//}
- (void)testMenuScrolling {
    
    XCUIElement *element = [[[[[XCUIApplication alloc] init] childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element;
    [element swipeDown];
    [element swipeDown];
    [element swipeUp];
    [element swipeUp];
}



@end

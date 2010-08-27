//
//  ColorTest.m
//  iBoost
//
//  Created by John Blanco on 6/4/10.
//  Copyright 2010 Effective UI. All rights reserved.
//

#import "GHUnit.h"
#import "Macros.h"
#import "UIColor+Boost.h"

@interface ColorTest : GHTestCase
@end

@implementation ColorTest

- (void)setUpClass {
    // Run at start of all tests in the class
}

- (void)tearDownClass {
    // Run at end of all tests in the class
}

- (void)setUp {
    // Run before each test method
}

- (void)tearDown {
    // Run after each test method
}   

- (void)testHexStrings {
	GHAssertEqualStrings(@"#ff0000", [[UIColor redColor] hexString], nil);
	GHAssertEqualStrings(@"#00ff00", [[UIColor greenColor] hexString], nil);
	GHAssertEqualStrings(@"#0000ff", [[UIColor blueColor] hexString], nil);

	GHAssertEqualStrings(@"#10204080", [[UIColor colorWithRed:(16.0/255.0) green:(32.0/255.0) blue:(64.0/255.0) alpha:(128.0/255.0)] hexString], nil);
}

- (void)testRGBAColors {
	UIColor *opaqueRed = [UIColor colorWithRGBA:0xff0000ff];
	
	GHAssertEqualsWithAccuracy(1.0f, opaqueRed.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, opaqueRed.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, opaqueRed.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueRed.a, 0.01, nil);
	
	UIColor *opaqueGreen = [UIColor colorWithRGBA:0x00ff00ff];
	
	GHAssertEqualsWithAccuracy(0.0f, opaqueGreen.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueGreen.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, opaqueGreen.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueGreen.a, 0.01, nil);

	UIColor *opaqueBlue = [UIColor colorWithRGBA:0x0000ffff];
	
	GHAssertEqualsWithAccuracy(0.0f, opaqueBlue.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, opaqueBlue.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueBlue.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueBlue.a, 0.01, nil);
	
	UIColor *opaqueWhite = [UIColor colorWithRGBA:0xffffffff];
	
	GHAssertEqualsWithAccuracy(1.0f, opaqueWhite.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueWhite.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueWhite.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueWhite.a, 0.01, nil);

	UIColor *translucentWhite = [UIColor colorWithRGBA:0xffffff80];
	
	GHAssertEqualsWithAccuracy(1.0f, translucentWhite.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, translucentWhite.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, translucentWhite.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.5f, translucentWhite.a, 0.01, nil);

	UIColor *transparentWhite = [UIColor colorWithRGBA:0xffffff00];
	
	GHAssertEqualsWithAccuracy(1.0f, transparentWhite.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, transparentWhite.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, transparentWhite.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, transparentWhite.a, 0.01, nil);
}

- (void)testHexColors {
	UIColor *opaqueRed = [UIColor colorWithHex:0xffff0000];
	
	GHAssertEqualsWithAccuracy(1.0f, opaqueRed.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, opaqueRed.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, opaqueRed.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueRed.a, 0.01, nil);
	
	UIColor *opaqueGreen = [UIColor colorWithHex:0xff00ff00];
	
	GHAssertEqualsWithAccuracy(0.0f, opaqueGreen.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueGreen.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, opaqueGreen.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueGreen.a, 0.01, nil);
	
	UIColor *opaqueBlue = [UIColor colorWithHex:0xff0000ff];
	
	GHAssertEqualsWithAccuracy(0.0f, opaqueBlue.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, opaqueBlue.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueBlue.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueBlue.a, 0.01, nil);
	
	UIColor *opaqueWhite = [UIColor colorWithHex:0xffffffff];
	
	GHAssertEqualsWithAccuracy(1.0f, opaqueWhite.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueWhite.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueWhite.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, opaqueWhite.a, 0.01, nil);
	
	UIColor *translucentWhite = [UIColor colorWithHex:0x80ffffff];
	
	GHAssertEqualsWithAccuracy(1.0f, translucentWhite.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, translucentWhite.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, translucentWhite.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.5f, translucentWhite.a, 0.01, nil);
	
	UIColor *transparentWhite = [UIColor colorWithHex:0x00ffffff];
	
	GHAssertEqualsWithAccuracy(1.0f, transparentWhite.r, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, transparentWhite.g, 0.01, nil);
	GHAssertEqualsWithAccuracy(1.0f, transparentWhite.b, 0.01, nil);
	GHAssertEqualsWithAccuracy(0.0f, transparentWhite.a, 0.01, nil);
}

@end
//
//  UIColor+Boost.h
//  Common
//
//  Created by Sean Christmann on 3/17/10.
//  Copyright 2010 EffectiveUI. All rights reserved.
//

#import <Foundation/Foundation.h>

#define WEBCOLOR(web) [UIColor colorWithWeb:(web)]
#define HEXCOLOR(hex) [UIColor colorWithHex:(hex)]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]


@interface UIColor (Hex)

/*usage
 RGBA style hex value
 UIColor *solidColor = [UIColor colorWithRGBA:0xFF0000FF];
 UIColor *alphaColor = [UIColor colorWithRGBA:0xFF000099];
 */
+ (UIColor *) colorWithRGBA:(uint) hex;

/*usage
 ARGB style hex value, safe to omit alpha
 UIColor *solidColor = [UIColor colorWithHex:0xFF0000];
 UIColor *alphaColor = [UIColor colorWithHex:0x99FF0000];
 */
+ (UIColor *) colorWithHex:(uint) hex;

/*usage 
 UIColor *solidColor = [UIColor colorWithWeb:@"#FF0000"];
 safe to omit # sign as well
 UIColor *solidColor = [UIColor colorWithWeb:@"FF0000"];
 */
+ (UIColor *) colorWithWeb:(NSString*) webHex;

- (NSString *) hexString;

- (UIColor*) brighten:(float) percent;

- (UIColor*) darken:(float) percent;

@end

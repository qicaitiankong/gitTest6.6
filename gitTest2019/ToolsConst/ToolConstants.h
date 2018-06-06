//
//  ToolConstants.h
//  BaseProject
//
//  Created by DeliveLee on 2017/1/4.
//  Copyright © 2017年 DeliveLee. All rights reserved.
//

#ifndef ToolConstants_h
#define ToolConstants_h

#define IS_IPHONE_4S        [[UIScreen mainScreen] bounds].size.height == 480
#define IS_IPHONE_5         [[UIScreen mainScreen] bounds].size.height == 568
#define IS_IPHONE_6         [[UIScreen mainScreen] bounds].size.height == 667
#define IS_IPHONE_6_PLUS    [[UIScreen mainScreen] bounds].size.height == 736

#define DeviceHeight   [UIScreen mainScreen].bounds.size.height
#define DeviceWidth    [UIScreen mainScreen].bounds.size.width

#define DeviceWidthOfiPhone_6 (375.0)

#define IOS9VERSION ([[[UIDevice currentDevice] systemVersion] floatValue]>=9.0?YES:NO)
#define IOS8VERSION ([[[UIDevice currentDevice] systemVersion] floatValue]<=8.4?YES:NO)
#define IOS10VERSION ([[[UIDevice currentDevice] systemVersion] floatValue]>=10.0?YES:NO)
#define IOS11VERSION ([[[UIDevice currentDevice] systemVersion] floatValue]>=11.0?YES:NO)

#define SPACEWIDTH (IOS11VERSION?6.0:0.0)

#define SYSTEM_VERSION_EQUAL_TO(v)             ``     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

#define RGBCOLOR(r, g, b)       [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBA(r, g, b, a) [UIColor colorWithRed:(float)r / 255.0f green:(float)g / 255.0f blue:(float)b / 255.0f alpha:a]

#define mClassString(a) [NSString stringWithUTF8String:object_getClassName([a class])]


#define REGEX_USER_NAME_LIMIT @"^.{3,10}$"
#define REGEX_USER_NAME @"[A-Za-z0-9]{3,10}"
#define REGEX_EMAIL @"[A-Z0-9a-z._%+-]{3,}+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
#define REGEX_PASSWORD_LIMIT @"^.{6,20}$"
#define REGEX_PASSWORD @"[A-Za-z0-9]{6,20}"
#define REGEX_PHONE_DEFAULT @"[0-9]{3}\\-[0-9]{3}\\-[0-9]{4}"


//PDP_dropdown_close
//PDP_dropdown_open

#if TARGET_IPHONE_SIMULATOR
#define IS_SIMULATORIS 1
#elif TARGET_OS_IPHONE
#define IS_SIMULATORIS 0
#endif

// UIScreen width.
#define  IMG_ScreenWidth   [UIScreen mainScreen].bounds.size.width

// UIScreen height.
#define  IMG_ScreenHeight  [UIScreen mainScreen].bounds.size.height
// iPhone X
#define  IMG_iPhoneX (IMG_ScreenWidth == 375.f && IMG_ScreenHeight == 812.f ? YES : NO)

// Status bar height.
#define  IMG_StatusBarHeight      (IMG_iPhoneX ? 44.f : 20.f)

#define  SearchBarHeight      50

// Navigation bar height.
#define  IMG_NavigationBarHeight  44.f

// Tabbar height.
#define  IMG_TabbarHeight         (IMG_iPhoneX ? (49.f+34.f) : 49.f)

// Tabbar safe bottom margin.
#define  IMG_TabbarSafeBottomMargin         (IMG_iPhoneX ? 34.f : 0.f)

// Status bar & navigation bar height.
#define  IMG_StatusBarAndNavigationBarHeight  (IMG_iPhoneX ? 88.f : 64.f)

#define IMG_ViewSafeAreInsets(view) ({UIEdgeInsets insets; if(@available(iOS 11.0, *)) {insets = view.safeAreaInsets;} else {insets = UIEdgeInsetsZero;} insets;})

#endif /* ToolConstants_h */

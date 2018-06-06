//
//  AppDelegate.m
//  gitTest2019
//
//  Created by 李自豪 on 2018/6/1.
//  Copyright © 2018年 haichuanhuiwulianxinxi. All rights reserved.
//

#import "AppDelegate.h"

#import "FirstPageViewController.h"
#import "SecondPageViewController.h"
#import "ThirdPageViewController.h"
#import "FourthPageViewController.h"
#import "NavigationViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self addNavigation];
    
    return YES;
}

- (void)addNavigation{
    FirstPageViewController *firstVC = [[FirstPageViewController alloc]init];
    SecondPageViewController *secondVC = [[SecondPageViewController alloc] init];
    ThirdPageViewController *thirdVC = [[ThirdPageViewController alloc] init];
    FourthPageViewController *fourthPageVC = [[FourthPageViewController alloc] init];
    
    NavigationViewController *nav = [[NavigationViewController alloc]init];
    [nav setViewControllers:@[firstVC]];
    
    NavigationViewController *wenXinNav = [[NavigationViewController alloc]init];
    [wenXinNav setViewControllers:@[secondVC]];
    
    NavigationViewController *shuiMuNav = [[NavigationViewController alloc]init];
    [shuiMuNav setViewControllers:@[thirdVC]];
    NavigationViewController *personalNav = [[NavigationViewController alloc]init];
    [personalNav setViewControllers:@[fourthPageVC]];
    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    [tabBarController setViewControllers:@[nav,wenXinNav,shuiMuNav,personalNav]];
    self.appTabBar = tabBarController.tabBar;
    
    NSArray *imageNameArr = @[@"shouye_normal",@"caibisai_normal",@"kaijiang_normal",@"wode_normal"];
    NSArray *imageSelectedNameArr = @[@"shouye_selected",@"caibisai_selected",@"kaijiang_selected",@"wode_selected"];
    NSArray *titleArr = @[@"首页",@"温馨",@"水木",@"我的"];
    for (int k = 0; k < 4; k ++){
        UITabBarItem *item = [self.appTabBar.items objectAtIndex:k];
        UIImage *normalImage = [UIImage imageNamed:imageNameArr[k]];
        UIImage *selectedImage = [UIImage imageNamed:imageSelectedNameArr[k]];
        NSString *titleStr = titleArr[k];
        [item setImage:normalImage];
        [item setSelectedImage:selectedImage];
        [item setTitle:titleStr];
        
    }
    
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

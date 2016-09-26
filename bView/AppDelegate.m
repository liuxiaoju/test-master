//
//  AppDelegate.m
//  bView
//
//  Created by dllo on 15/11/23.
//  Copyright (c) 2015年 Liu. All rights reserved.
//

#import "AppDelegate.h"
#define WIDTH self.window.frame.size.width
#define HEIGHT self.window.frame.size.height
@interface AppDelegate ()
#pragma 界面有ssasasasasasa姐姐的双眼皮规律,控件较多:for循环+局部变量+tag   否则用属性
@property (retain, nonatomic) UIButton *aButton;
@property (retain, nonatomic) UIButton *bButton;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    NSMutableArray *titleArray = [NSMutableArray arrayWithObjects:@"aView",@"bView", nil];
    for (NSInteger i = 0; i< 2; i++) {
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(WIDTH/30+i*WIDTH/2, HEIGHT/10, WIDTH/3-WIDTH/30, HEIGHT/20)];
         button.tag = 10000+i;
        [button addTarget:self action:@selector(changeView:) forControlEvents:UIControlEventTouchUpInside];
         button.backgroundColor = [UIColor redColor];
        [button setTitle:titleArray[i] forState:UIControlStateNormal];
        [self.window addSubview:button];
    }
    NSMutableArray *colorArray = [NSMutableArray arrayWithObjects:[UIColor cyanColor],[UIColor grayColor], nil];
    for (NSInteger i = 0; i<2; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(WIDTH/20+i*1, HEIGHT/5, WIDTH, HEIGHT/2)];
        view.backgroundColor = colorArray[i];
        view.tag = i +10000;
        [self.window addSubview:view];
    }
    
    self.aButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.aButton.backgroundColor =[UIColor yellowColor];
    self.aButton.frame = CGRectMake(WIDTH/20, HEIGHT/5*4, WIDTH/3-WIDTH/20, HEIGHT/20);
    [self.aButton addTarget:self action:@selector(viewChange:) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:self.aButton];
    
    self.bButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.bButton.backgroundColor = [UIColor blueColor];
    self.bButton.frame = CGRectMake(WIDTH/2, HEIGHT/5*4, WIDTH/3-WIDTH/20, HEIGHT/20);
    [self.bButton addTarget:self action:@selector(viewChange:) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:self.bButton];
    
    
    return YES;
}
- (void)viewChange:(UIButton *)btn{
    if (self.aButton == btn) {
        [self.window bringSubviewToFront:self.aButton];
    }
}
- (void)changeView:(UIButton *)button{
    if (button.tag == 10000) {
        [self.window bringSubviewToFront:[self.window viewWithTag:10000]];
    } else {
        [self.window bringSubviewToFront:[self.window viewWithTag:10001]];
    }
        
   
   

}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

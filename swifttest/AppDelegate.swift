//
//  AppDelegate.swift
//  swifttest
//
//  Created by genilex3 on 16/10/14.
//  Copyright © 2016年 wei63w. All rights reserved.
//

import UIKit




@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var drawerController:MMDrawerController!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let tabbarcontroller = UITabBarController() ;
        
        let leftsb = UIStoryboard(name: "left", bundle: nil);
        let leftvc = leftsb.instantiateInitialViewController();
        leftvc?.title = "left";
        leftvc?.tabBarItem.image = UIImage(named: "tab_icon1_normal.png");
        leftvc?.tabBarItem.selectedImage = UIImage(named: "tab_icon1_selcet.png");
        let leftnav = UINavigationController(rootViewController: leftvc!);

        
        let centersb = UIStoryboard(name: "center", bundle: nil);
        let centervc = centersb.instantiateInitialViewController();
        centervc?.title = "center";
        centervc?.tabBarItem.image = UIImage(named: "tab_icon2_normal.png");
        centervc?.tabBarItem.selectedImage = UIImage(named: "tab_icon2_selcet.png");
        let centernav = UINavigationController(rootViewController: centervc!);
        
        let right = UIStoryboard(name: "right", bundle: nil);
        let rightvc = right.instantiateInitialViewController();
        rightvc?.title = "right";
        rightvc?.tabBarItem.image = UIImage(named: "tab_icon5_normal.png");
        rightvc?.tabBarItem.selectedImage = UIImage(named: "tab_icon5_selcet.png");
        let rightnav = UINavigationController(rootViewController: rightvc!);
        
        tabbarcontroller.addChildViewController(leftnav);
        tabbarcontroller.addChildViewController(centernav);
        tabbarcontroller.addChildViewController(rightnav);
        
        
        let otheronesb = UIStoryboard.init(name: "leftMenu", bundle: nil);
        let otheronevc = otheronesb.instantiateInitialViewController();
        
//        let othertwosb = UIStoryboard.init(name: "othertwo", bundle: nil);
//        let othertwovc = othertwosb.instantiateInitialViewController();
        
        
        drawerController = MMDrawerController(center: tabbarcontroller, leftDrawerViewController: otheronevc);
        drawerController.openDrawerGestureModeMask = MMOpenDrawerGestureMode.all;
        drawerController.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.all;
        
        drawerController.setDrawerVisualStateBlock { (drawerController, drawerSide, percentVisible) in
            var sideDrawerViewController:UIViewController?
            if(drawerSide == MMDrawerSide.left){
                sideDrawerViewController = drawerController?.leftDrawerViewController;
            }
            sideDrawerViewController?.view.alpha = percentVisible;
        }
        
        
        self.window?.rootViewController = drawerController;
        
        
        
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


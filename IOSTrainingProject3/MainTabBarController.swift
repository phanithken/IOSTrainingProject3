//
//  MainTabBarController.swift
//  IOSTrainingProject3
//
//  Created by Ken Phanith on 2018/05/09.
//  Copyright © 2018 Ken Phanith. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let page1viewController = Page1ViewController()
        page1viewController.tabBarItem = UITabBarItem(title: "PAGE1", image: UIImage(named: "1"), selectedImage: UIImage(named: "1_selected"))
        let page2viewController = Page2ViewController()
        page2viewController.tabBarItem = UITabBarItem(title: "PAGE2", image: UIImage(named: "2"), selectedImage: UIImage(named: "2_selected"))
        let page3viewController = Page3ViewController()
        page3viewController.tabBarItem = UITabBarItem(title: "PAGE3", image: UIImage(named: "3"), selectedImage: UIImage(named: "3_selected"))
        let viewControllerList = [ page1viewController, page2viewController, page3viewController ]
        viewControllers = viewControllerList
    }
}

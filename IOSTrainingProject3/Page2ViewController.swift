//
//  Page2ViewController.swift
//  IOSTrainingProject3
//
//  Created by Ken Phanith on 2018/05/09.
//  Copyright © 2018 Ken Phanith. All rights reserved.
//

import UIKit
import SnapKit

class Page2ViewController: UINavigationController {
    
}

extension Page2ViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pushViewController(Page2IndexViewController(), animated: false)
    }
}


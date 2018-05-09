//
//  Page1ViewController.swift
//  IOSTrainingProject3
//
//  Created by Ken Phanith on 2018/05/09.
//  Copyright © 2018 Ken Phanith. All rights reserved.
//

import UIKit
import SnapKit

class Page1ViewController: UIViewController {
    let textView = UITextView()
    let label = UILabel()
}

extension Page1ViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textView)
        view.addSubview(label)
        
        textView.text = "This is Page 1"
        textView.snp.makeConstraints({(make) -> Void in
            make.size.equalTo(90)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(30)
        })
        
        label.text = "This is UILabel"
        label.snp.updateConstraints { (make) in
            make.size.equalTo(120)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}

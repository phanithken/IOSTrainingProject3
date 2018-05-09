//
//  ViewController.swift
//  IOSTrainingProject3
//
//  Created by Ken Phanith on 2018/05/09.
//  Copyright © 2018 Ken Phanith. All rights reserved.
//

import UIKit

class Page2IndexViewController: UIViewController {
    var uiBtn = UIButton()
}

extension Page2IndexViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(uiBtn)
        self.title = "This is page 2"
        
        uiBtn.setTitle("UIButton", for: .normal)
        uiBtn.backgroundColor = UIColor.blue
        uiBtn.setTitleColor(UIColor.white, for: .normal)
        uiBtn.snp.makeConstraints({(make) -> Void in
            make.width.equalTo(150)
            make.height.equalTo(60)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        })
        
        uiBtn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside);
    }
    
    @objc func btnClicked(){
        let detailTextView = UITextView()
        detailTextView.text = "This is Detail Page"
        detailTextView.backgroundColor = nil
        let detailViewcontroller = UIViewController()
        detailViewcontroller.view.backgroundColor = .blue
        detailViewcontroller.view.addSubview(detailTextView)
        detailTextView.snp.makeConstraints({(make) -> Void in
            make.size.equalTo(120)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(30)
        })
        self.navigationController?.pushViewController(detailViewcontroller, animated: true)
    }
}

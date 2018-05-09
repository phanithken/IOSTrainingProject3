//
//  Page3ViewController.swift
//  IOSTrainingProject3
//
//  Created by Ken Phanith on 2018/05/09.
//  Copyright © 2018 Ken Phanith. All rights reserved.
//

import UIKit
import SnapKit

class Page3ViewController: UIViewController {
    let textView = UITextView()
    var uiBtn = UIButton()
}

extension Page3ViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(textView)
        view.addSubview(uiBtn)
        
        textView.text = "This is Page 3"
        textView.snp.makeConstraints({(make) -> Void in
            make.size.equalTo(90)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(30)
        })
        
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
}

extension Page3ViewController{
    @objc func btnClicked(){
        let alert = UIAlertController(title: "Title", message: "This is a message.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

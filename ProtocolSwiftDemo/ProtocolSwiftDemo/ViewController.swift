//
//  ViewController.swift
//  ProtocolSwiftDemo
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func requestData() {
        
        // 应用层调用
        EHIUrlSessionRequestMethod().requestData(EHIUserRequest()) { user in
            print(user?.name ?? "")
        }
    }
}


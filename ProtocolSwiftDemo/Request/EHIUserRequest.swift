//
//  EHIUserRequest.swift
//  ProtocolSwiftDemo
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

import UIKit

// 实现EHIRequest协议
struct EHIUserRequest: EHIRequestProtocol {
    
    // 实现协议内容
    let requestType: EHIRequestType = .Get
    
    var url: String = "https://api.ehi.com"
    
    var param: [String : Any] = ["id" : "111"]

    typealias Response = EHIUser
}

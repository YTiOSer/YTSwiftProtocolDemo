//
//  EHIRequestProtocol.swift
//  ProtocolSwiftDemo
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

import UIKit
import Foundation

enum EHIRequestType: String {
    case Get
    case Post
}

// 请求参数协议 （具体每个模块的具体参数自己实现）
protocol EHIRequestProtocol {
    
    // 请求方式
    var requestType: EHIRequestType {get}
    // url
    var url: String {get}
    // 参数
    var param: [String: Any] {get}
    
    // 关联类型（可以对回调参数进行抽象）
    associatedtype Response: EHIRequestDecodableProtocol
}


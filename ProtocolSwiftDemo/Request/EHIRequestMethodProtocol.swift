//
//  EHIRequestMethodProtocol.swift
//  ProtocolSwiftDemo
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

import UIKit

// 请求方法协议
protocol EHIRequestMethodProtocol {
    
    func requestData<T: EHIRequestProtocol>(_ request: T, handler: @escaping(T.Response?) -> Void)
}

extension EHIRequestMethodProtocol {
    
    // 这里不默认实现，因为默认实现就和使用的请求框架耦合，不便于替换请求框架，每个请求方法自己实现协议即可
}

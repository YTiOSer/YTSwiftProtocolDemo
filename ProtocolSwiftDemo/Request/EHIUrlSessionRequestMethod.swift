//
//  EHIUrlSessionRequestMethod.swift
//  ProtocolSwiftDemo
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

import Foundation

// 实现请求方法协议，这里使用UrlSession实现，别的方法实现再创建别的结构体实现协议，这样解耦
struct EHIUrlSessionRequestMethod: EHIRequestMethodProtocol{
    
    func requestData<T: EHIRequestProtocol>(_ requesProtocol: T, handler: @escaping (T.Response?) -> Void) {
        //请求实现
        let urlRequest = URL(string: requesProtocol.url)!
        let request = URLRequest(url: urlRequest)
        
        let task = URLSession.shared.dataTask(with: request) {
            data, _, error in
            if let data = data, let response = T.Response.parse(data: data) {
                DispatchQueue.main.async {
                    handler(response)
                }
            } else {
                DispatchQueue.main.async {
                    handler(nil)
                }
            }
        }
        task.resume()
    }
}

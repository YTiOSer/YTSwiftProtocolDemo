//
//  EHIUser.swift
//  ProtocolSwiftDemo
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

import Foundation

struct EHIUser {
    
    let name: String
    
    init?(data: Data) {
        guard let obj = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
            return nil
        }
        guard let name = obj["name"] as? String else {
            return nil
        }
        
        self.name = name
    }
}

// 遵守解析数据协议，解析数据为user类型
extension EHIUser: EHIRequestDecodableProtocol {
    
    static func parse(data: Data) -> EHIUser? {
        return EHIUser(data: data)
    }
}

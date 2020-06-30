//
//  EHIRequestDecodableProtocol.swift
//  ProtocolSwiftDemo
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

import UIKit

// 解析数据协议
protocol EHIRequestDecodableProtocol {
    
    static func parse(data: Data) -> Self?
}

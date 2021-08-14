//
//  NSObjectProtocol+.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/08/14.
//

import Foundation

// 全てのNSObjectの基本となるプロトコル
extension NSObjectProtocol {
    static var className: String {
        String(describing: self)
    }
}

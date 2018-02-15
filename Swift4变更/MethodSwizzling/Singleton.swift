//
//  Singleton.swift
//  MethodSwizzling
//
//  Created by 熊智凡 on 2018/2/15.
//  Copyright © 2018年 Scorpio.X. All rights reserved.
//

import Foundation

class Singleton: NSObject {
    
    static let sharedInstance: Singleton = {
        let instance = Singleton()
        return instance
    }()
    
    private override init() {
        
    }
    
}

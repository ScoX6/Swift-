//
//  SwiftLoad_Second.swift
//  MethodSwizzling
//
//  Created by 熊智凡 on 2018/2/15.
//  Copyright © 2018年 Scorpio.X. All rights reserved.
//

import UIKit

extension UIViewController {
    static let shared: UIViewController = {
        $0.initialize()
        return $0
    }(UIViewController())
    
    func initialize() {
        guard self.classForCoder === UIViewController.self else {
            return
        }
        let swizzleClosure: () = {
            print("swizzleClosure")
        }()
        swizzleClosure
    }
}















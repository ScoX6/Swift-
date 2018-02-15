//
//  SwiftLoad.swift
//  MethodSwizzling
//
//  Created by 熊智凡 on 2018/2/15.
//  Copyright © 2018年 Scorpio.X. All rights reserved.
//

import UIKit

protocol SelfAware: class {
    static func awake()
}

class NothingToSeeHere {
    
    static func harmlessFunction() {
        let typeCount = Int(objc_getClassList(nil, 0))
        let types = UnsafeMutablePointer<AnyClass>.allocate(capacity: typeCount)
        let autoreleasingTypes = AutoreleasingUnsafeMutablePointer<AnyClass>(types)
        objc_getClassList(autoreleasingTypes, Int32(typeCount))
        for index in 0 ..< typeCount {
            (types[index] as? SelfAware.Type)?.awake()
        }
        types.deallocate(capacity: typeCount)
    }
}

extension UIApplication {
    private static let runOnce: Void = {
       NothingToSeeHere.harmlessFunction()
    }()
    
    open override var next: UIResponder? {
        UIApplication.runOnce
        return super.next
    }
}



































//
//  SXApplication.swift
//  MethodSwizzling
//
//  Created by 熊智凡 on 2018/2/15.
//  Copyright © 2018年 Scorpio.X. All rights reserved.
//

import UIKit

class SXApplication: UIApplication {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(#function)
        let _ = UIViewController.shared
    }
    
}

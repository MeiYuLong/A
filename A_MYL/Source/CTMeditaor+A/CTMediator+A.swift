//
//  CTMediator+A.swift
//  A_MYL
//
//  Created by yulong mei on 2020/9/10.
//  Copyright © 2020 yulong mei. All rights reserved.
//

import Foundation
import CTMediator

fileprivate let ModuleName = "A_MYL"

public extension CTMediator {
    
    func A_MYL_Source(name:String, callback:@escaping (String)->Void) -> UIViewController? {
        let params:[AnyHashable:Any] = [
            "name": name + "Source",
            "callback": callback,
            kCTMediatorParamsKeySwiftTargetModuleName: ModuleName
        ]
        if let viewController = performTarget(ModuleName, action: "demo", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}

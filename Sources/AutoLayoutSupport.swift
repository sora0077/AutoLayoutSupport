//
//  AutoLayoutSupport.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/20.
//  Copyright © 2018年 林達也. All rights reserved.
//

import UIKit

public protocol AutoLayoutSupportCompatible: class {}

public struct Extension<Base> {
    let base: Base
}

extension AutoLayoutSupportCompatible {
    public var autolayout: Extension<Self> { return Extension(base: self) }
}

extension UIView: AutoLayoutSupportCompatible {}
extension UILayoutGuide: AutoLayoutSupportCompatible {}
extension UILayoutSupport {
    public var autolayout: Extension<Self> { return Extension(base: self) }
}

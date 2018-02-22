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

    public func apply(_ closure: (Extension<Base>) -> Void) {
        closure(self)
    }
}

extension AutoLayoutSupportCompatible {
    public var autolayout: Extension<Self> { return Extension(base: self) }
}

extension UIView: AutoLayoutSupportCompatible {}
extension UILayoutGuide: AutoLayoutSupportCompatible {}
extension UILayoutSupport {
    public var autolayout: Extension<Self> { return Extension(base: self) }
}

extension Extension where Base: UILayoutSupport {
    public var top: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: nil, anchors: base.topAnchor, keyPaths: [
            \UIView.topAnchor,
            \UILayoutGuide.topAnchor,
            \UILayoutSupport.topAnchor
        ])
    }

    public var bottom: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: nil, anchors: base.bottomAnchor, keyPaths: [
            \UIView.bottomAnchor,
            \UILayoutGuide.bottomAnchor,
            \UILayoutSupport.bottomAnchor
        ])
    }

    public var height: Layout<NSLayoutDimension> {
        return Layout(owner: nil, anchors: base.heightAnchor, keyPaths: [
            \UIView.heightAnchor,
            \UILayoutGuide.heightAnchor,
            \UILayoutSupport.heightAnchor
        ])
    }
}

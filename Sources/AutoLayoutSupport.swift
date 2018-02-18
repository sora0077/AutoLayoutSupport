//
//  AutoLayoutSupport.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/15.
//  Copyright © 2018年 林達也. All rights reserved.
//

import UIKit

public protocol AutoLayoutSupportCompatible: class {}

public struct Extension<Base> {
    fileprivate let base: Base
}

extension AutoLayoutSupportCompatible {
    public var autolayout: Extension<Self> { return Extension(base: self) }
}

extension UIView: AutoLayoutSupportCompatible {}
extension UILayoutGuide: AutoLayoutSupportCompatible {}
extension UILayoutSupport {
    public var autolayout: Extension<Self> { return Extension(base: self) }
}

extension Extension where Base: UIView {
    public var top: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.topAnchor)
    }

    public var bottom: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.bottomAnchor)
    }

    public var left: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.leftAnchor)
    }

    public var right: Layout<NSLayoutXAxisAnchor> {
         return Layout(owner: base, anchors: base.rightAnchor)
    }

    public var leading: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.leadingAnchor)
    }

    public var trailing: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.trailingAnchor)
    }

    public var centerX: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.centerXAnchor)
    }

    public var centerY: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.centerYAnchor)
    }

    public var firstBaseline: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.firstBaselineAnchor)
    }

    public var lastBaseline: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.lastBaselineAnchor)
    }

    public var width: Layout<NSLayoutDimension> {
        return Layout(owner: base, anchors: base.widthAnchor)
    }

    public var height: Layout<NSLayoutDimension> {
        return Layout(owner: base, anchors: base.heightAnchor)
    }

    // MARK: - composition layout
    public var center: Layout<(x: NSLayoutXAxisAnchor, height: NSLayoutYAxisAnchor)> {
        return Layout(owner: base, anchors: (base.centerXAnchor, base.centerYAnchor))
    }

    public var size: Layout<(width: NSLayoutDimension, height: NSLayoutDimension)> {
        return Layout(owner: base, anchors: (base.widthAnchor, base.heightAnchor))
    }

    var edges: Layout<(top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)> {
        return Layout(owner: base, anchors: (base.topAnchor, base.leftAnchor, base.bottomAnchor, base.rightAnchor))
    }
}

extension Extension where Base: UILayoutGuide {
    public var top: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.topAnchor)
    }

    public var bottom: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.bottomAnchor)
    }

    public var left: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.leftAnchor)
    }

    public var right: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.rightAnchor)
    }

    public var leading: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.leadingAnchor)
    }

    public var trailing: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.trailingAnchor)
    }

    public var centerX: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.centerXAnchor)
    }

    public var centerY: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.centerYAnchor)
    }

    public var width: Layout<NSLayoutDimension> {
        return Layout(owner: base.owningView, anchors: base.widthAnchor)
    }

    public var height: Layout<NSLayoutDimension> {
        return Layout(owner: base.owningView, anchors: base.heightAnchor)
    }

    // MARK: - composition layout
    public var center: Layout<(x: NSLayoutXAxisAnchor, height: NSLayoutYAxisAnchor)> {
        return Layout(owner: base.owningView, anchors: (base.centerXAnchor, base.centerYAnchor))
    }

    public var size: Layout<(width: NSLayoutDimension, height: NSLayoutDimension)> {
        return Layout(owner: base.owningView, anchors: (base.widthAnchor, base.heightAnchor))
    }

    var edges: Layout<(top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)> {
        return Layout(owner: base.owningView, anchors: (base.topAnchor, base.leftAnchor, base.bottomAnchor, base.rightAnchor))
    }
}

extension Extension where Base: UILayoutSupport {
    public var top: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: nil, anchors: base.topAnchor)
    }

    public var bottom: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: nil, anchors: base.bottomAnchor)
    }

    public var height: Layout<NSLayoutDimension> {
        return Layout(owner: nil, anchors: base.heightAnchor)
    }
}

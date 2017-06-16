//
//  AutolayoutHelper.swift
//  AutolayoutHelper
//
//  Created by 林 達也 on 2017/06/16.
//  Copyright © 2017年 sora0077 All rights reserved.
//

import UIKit

public protocol AutolayoutExtension {}

public struct Extension<Base> {
    public let base: Base
}

public extension AutolayoutExtension {
    var autolayout: Extension<Self> { return Extension(base: self) }
}

public extension AutolayoutExtension where Self: UIView {
    var autolayout: Extension<Self> {
        if translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = false
        }
        return Extension(base: self)
    }

    var autoresizing: Extension<Self> {
        return Extension(base: self)
    }
}

extension UIView: AutolayoutExtension {}
extension UILayoutGuide: AutolayoutExtension {}
extension UILayoutSupport {
    public var autolayout: Extension<UILayoutSupport> { return Extension(base: self) }
}

// MARK: -
public extension Extension where Base: UIView {
    var top: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.topAnchor) }

    var bottom: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.bottomAnchor) }

    var left: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.leftAnchor) }

    var right: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.rightAnchor) }

    var leading: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.leadingAnchor) }

    var trailing: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.trailingAnchor) }

    var centerX: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.centerXAnchor) }

    var centerY: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.centerYAnchor) }

    var firstBaseline: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.firstBaselineAnchor) }

    var lastBaseline: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.lastBaselineAnchor) }

    var width: Layout<NSLayoutDimension> { return Layout(anchors: base.widthAnchor) }

    var height: Layout<NSLayoutDimension> { return Layout(anchors: base.heightAnchor) }

    var center: Layout<(x: NSLayoutXAxisAnchor, y: NSLayoutYAxisAnchor)> {
        return Layout(anchors: (base.centerXAnchor, base.centerYAnchor))
    }

    var size: Layout<(width: NSLayoutDimension, height: NSLayoutDimension)> {
        return Layout(anchors: (base.widthAnchor, base.heightAnchor))
    }

    var edges: Layout<(top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)> {
        return Layout(anchors: (base.topAnchor, base.leftAnchor, base.bottomAnchor, base.trailingAnchor))
    }
}

public extension Extension where Base: UILayoutGuide {
    var top: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.topAnchor) }

    var bottom: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.bottomAnchor) }

    var left: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.leftAnchor) }

    var right: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.rightAnchor) }

    var leading: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.leadingAnchor) }

    var trailing: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.trailingAnchor) }

    var centerX: Layout<NSLayoutXAxisAnchor> { return Layout(anchors: base.centerXAnchor) }

    var centerY: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.centerYAnchor) }

    var width: Layout<NSLayoutDimension> { return Layout(anchors: base.widthAnchor) }

    var height: Layout<NSLayoutDimension> { return Layout(anchors: base.heightAnchor) }

    var center: Layout<(x: NSLayoutXAxisAnchor, y: NSLayoutYAxisAnchor)> {
        return Layout(anchors: (base.centerXAnchor, base.centerYAnchor))
    }

    var size: Layout<(width: NSLayoutDimension, height: NSLayoutDimension)> {
        return Layout(anchors: (base.widthAnchor, base.heightAnchor))
    }

    var edges: Layout<(top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)> {
        return Layout(anchors: (base.topAnchor, base.leftAnchor, base.bottomAnchor, base.trailingAnchor))
    }
}

public extension Extension where Base: UILayoutSupport {
    var top: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.topAnchor) }

    var bottom: Layout<NSLayoutYAxisAnchor> { return Layout(anchors: base.bottomAnchor) }

    var height: Layout<NSLayoutDimension> { return Layout(anchors: base.heightAnchor) }
}

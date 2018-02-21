// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  AutoLayoutSupport.generated.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/15.
//  Copyright © 2018年 林達也. All rights reserved.
//

import UIKit

extension Extension where Base: UILayoutGuide {
    // for NSLayoutXAxisAnchor
    public var left: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.leftAnchor, keyPaths: [
            \UIView.leftAnchor,
            \UILayoutGuide.leftAnchor
        ])
    }
    public var right: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.rightAnchor, keyPaths: [
            \UIView.rightAnchor,
            \UILayoutGuide.rightAnchor
        ])
    }
    public var leading: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.leadingAnchor, keyPaths: [
            \UIView.leadingAnchor,
            \UILayoutGuide.leadingAnchor
        ])
    }
    public var trailing: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.trailingAnchor, keyPaths: [
            \UIView.trailingAnchor,
            \UILayoutGuide.trailingAnchor
        ])
    }
    public var centerX: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.centerXAnchor, keyPaths: [
            \UIView.centerXAnchor,
            \UILayoutGuide.centerXAnchor
        ])
    }
    // for NSLayoutYAxisAnchor
    public var top: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.topAnchor, keyPaths: [
            \UIView.topAnchor,
            \UILayoutGuide.topAnchor
        ])
    }
    public var bottom: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.bottomAnchor, keyPaths: [
            \UIView.bottomAnchor,
            \UILayoutGuide.bottomAnchor
        ])
    }
    public var centerY: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.centerYAnchor, keyPaths: [
            \UIView.centerYAnchor,
            \UILayoutGuide.centerYAnchor
        ])
    }
    // for NSLayoutDimension
    public var width: Layout<NSLayoutDimension> {
        return Layout(owner: base.owningView, anchors: base.widthAnchor, keyPaths: [
            \UIView.widthAnchor,
            \UILayoutGuide.widthAnchor
        ])
    }
    public var height: Layout<NSLayoutDimension> {
        return Layout(owner: base.owningView, anchors: base.heightAnchor, keyPaths: [
            \UIView.heightAnchor,
            \UILayoutGuide.heightAnchor
        ])
    }
    // MARK: - composition layout
    public var center: Layout<(x: NSLayoutXAxisAnchor, y: NSLayoutYAxisAnchor)> {
        return Layout(owner: base.owningView, anchors: (base.centerXAnchor, base.centerYAnchor))
    }

    public var size: Layout<(width: NSLayoutDimension, height: NSLayoutDimension)> {
        return Layout(owner: base.owningView, anchors: (base.widthAnchor, base.heightAnchor))
    }

    public var edges: Layout<(top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)> {
        return Layout(owner: base.owningView, anchors: (base.topAnchor, base.leftAnchor, base.bottomAnchor, base.rightAnchor))
    }
}
extension Extension where Base: UIView {
    // for NSLayoutXAxisAnchor
    public var left: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.leftAnchor, keyPaths: [
            \UIView.leftAnchor,
            \UILayoutGuide.leftAnchor
        ])
    }
    public var right: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.rightAnchor, keyPaths: [
            \UIView.rightAnchor,
            \UILayoutGuide.rightAnchor
        ])
    }
    public var leading: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.leadingAnchor, keyPaths: [
            \UIView.leadingAnchor,
            \UILayoutGuide.leadingAnchor
        ])
    }
    public var trailing: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.trailingAnchor, keyPaths: [
            \UIView.trailingAnchor,
            \UILayoutGuide.trailingAnchor
        ])
    }
    public var centerX: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.centerXAnchor, keyPaths: [
            \UIView.centerXAnchor,
            \UILayoutGuide.centerXAnchor
        ])
    }
    // for NSLayoutYAxisAnchor
    public var top: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.topAnchor, keyPaths: [
            \UIView.topAnchor,
            \UILayoutGuide.topAnchor
        ])
    }
    public var bottom: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.bottomAnchor, keyPaths: [
            \UIView.bottomAnchor,
            \UILayoutGuide.bottomAnchor
        ])
    }
    public var centerY: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.centerYAnchor, keyPaths: [
            \UIView.centerYAnchor,
            \UILayoutGuide.centerYAnchor
        ])
    }
    public var firstBaseline: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.firstBaselineAnchor, keyPaths: [
            \UIView.firstBaselineAnchor
        ])
    }
    public var lastBaseline: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.lastBaselineAnchor, keyPaths: [
            \UIView.lastBaselineAnchor
        ])
    }
    // for NSLayoutDimension
    public var width: Layout<NSLayoutDimension> {
        return Layout(owner: base, anchors: base.widthAnchor, keyPaths: [
            \UIView.widthAnchor,
            \UILayoutGuide.widthAnchor
        ])
    }
    public var height: Layout<NSLayoutDimension> {
        return Layout(owner: base, anchors: base.heightAnchor, keyPaths: [
            \UIView.heightAnchor,
            \UILayoutGuide.heightAnchor
        ])
    }
    // MARK: - composition layout
    public var center: Layout<(x: NSLayoutXAxisAnchor, y: NSLayoutYAxisAnchor)> {
        return Layout(owner: base, anchors: (base.centerXAnchor, base.centerYAnchor))
    }

    public var size: Layout<(width: NSLayoutDimension, height: NSLayoutDimension)> {
        return Layout(owner: base, anchors: (base.widthAnchor, base.heightAnchor))
    }

    public var edges: Layout<(top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)> {
        return Layout(owner: base, anchors: (base.topAnchor, base.leftAnchor, base.bottomAnchor, base.rightAnchor))
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

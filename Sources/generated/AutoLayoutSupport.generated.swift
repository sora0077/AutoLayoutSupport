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
            \Extension<UIView>.left,
            \Extension<UILayoutGuide>.left
        ])
    }
    public var right: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.rightAnchor, keyPaths: [
            \Extension<UIView>.right,
            \Extension<UILayoutGuide>.right
        ])
    }
    public var leading: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.leadingAnchor, keyPaths: [
            \Extension<UIView>.leading,
            \Extension<UILayoutGuide>.leading
        ])
    }
    public var trailing: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.trailingAnchor, keyPaths: [
            \Extension<UIView>.trailing,
            \Extension<UILayoutGuide>.trailing
        ])
    }
    public var centerX: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.centerXAnchor, keyPaths: [
            \Extension<UIView>.centerX,
            \Extension<UILayoutGuide>.centerX
        ])
    }
    // for NSLayoutYAxisAnchor
    public var top: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.topAnchor, keyPaths: [
            \Extension<UIView>.top,
            \Extension<UILayoutGuide>.top,
            \Extension<UILayoutSupport>.top
        ])
    }
    public var bottom: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.bottomAnchor, keyPaths: [
            \Extension<UIView>.bottom,
            \Extension<UILayoutGuide>.bottom,
            \Extension<UILayoutSupport>.bottom
        ])
    }
    public var centerY: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base.owningView, anchors: base.centerYAnchor, keyPaths: [
            \Extension<UIView>.centerY,
            \Extension<UILayoutGuide>.centerY
        ])
    }
    // for NSLayoutDimension
    public var width: Layout<NSLayoutDimension> {
        return Layout(owner: base.owningView, anchors: base.widthAnchor, keyPaths: [
            \Extension<UIView>.width,
            \Extension<UILayoutGuide>.width
        ])
    }
    public var height: Layout<NSLayoutDimension> {
        return Layout(owner: base.owningView, anchors: base.heightAnchor, keyPaths: [
            \Extension<UIView>.height,
            \Extension<UILayoutGuide>.height,
            \Extension<UILayoutSupport>.height
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
            \Extension<UIView>.left,
            \Extension<UILayoutGuide>.left
        ])
    }
    public var right: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.rightAnchor, keyPaths: [
            \Extension<UIView>.right,
            \Extension<UILayoutGuide>.right
        ])
    }
    public var leading: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.leadingAnchor, keyPaths: [
            \Extension<UIView>.leading,
            \Extension<UILayoutGuide>.leading
        ])
    }
    public var trailing: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.trailingAnchor, keyPaths: [
            \Extension<UIView>.trailing,
            \Extension<UILayoutGuide>.trailing
        ])
    }
    public var centerX: Layout<NSLayoutXAxisAnchor> {
        return Layout(owner: base, anchors: base.centerXAnchor, keyPaths: [
            \Extension<UIView>.centerX,
            \Extension<UILayoutGuide>.centerX
        ])
    }
    // for NSLayoutYAxisAnchor
    public var top: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.topAnchor, keyPaths: [
            \Extension<UIView>.top,
            \Extension<UILayoutGuide>.top,
            \Extension<UILayoutSupport>.top
        ])
    }
    public var bottom: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.bottomAnchor, keyPaths: [
            \Extension<UIView>.bottom,
            \Extension<UILayoutGuide>.bottom,
            \Extension<UILayoutSupport>.bottom
        ])
    }
    public var centerY: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.centerYAnchor, keyPaths: [
            \Extension<UIView>.centerY,
            \Extension<UILayoutGuide>.centerY
        ])
    }
    public var firstBaseline: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.firstBaselineAnchor, keyPaths: [
            \Extension<UIView>.firstBaseline
        ])
    }
    public var lastBaseline: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: base, anchors: base.lastBaselineAnchor, keyPaths: [
            \Extension<UIView>.lastBaseline
        ])
    }
    // for NSLayoutDimension
    public var width: Layout<NSLayoutDimension> {
        return Layout(owner: base, anchors: base.widthAnchor, keyPaths: [
            \Extension<UIView>.width,
            \Extension<UILayoutGuide>.width
        ])
    }
    public var height: Layout<NSLayoutDimension> {
        return Layout(owner: base, anchors: base.heightAnchor, keyPaths: [
            \Extension<UIView>.height,
            \Extension<UILayoutGuide>.height,
            \Extension<UILayoutSupport>.height
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

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
    public var autolayout: Extension<UILayoutSupport> { return Extension(base: self) }
}

extension Extension where Base: UILayoutSupport {
    public var top: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: nil, anchors: base.topAnchor, keyPaths: [
            \Extension<UIView>.top,
            \Extension<UILayoutGuide>.top,
            \Extension<UILayoutSupport>.top
        ])
    }

    public var bottom: Layout<NSLayoutYAxisAnchor> {
        return Layout(owner: nil, anchors: base.bottomAnchor, keyPaths: [
            \Extension<UIView>.bottom,
            \Extension<UILayoutGuide>.bottom,
            \Extension<UILayoutSupport>.bottom
        ])
    }

    public var height: Layout<NSLayoutDimension> {
        return Layout(owner: nil, anchors: base.heightAnchor, keyPaths: [
            \Extension<UIView>.height,
            \Extension<UILayoutGuide>.height,
            \Extension<UILayoutSupport>.height
        ])
    }
}

//
//
// MARK: - safe area backward compatiblity
public struct SafeArea {
    fileprivate let viewController: UIViewController
}

extension UIViewController {
    public var autolayout: Extension<UIViewController> { return Extension(base: self) }
}

extension Extension where Base == UIViewController {
    public var safeArea: Extension<SafeArea> {
        return Extension<SafeArea>(base: SafeArea(viewController: base))
    }
}

extension Extension where Base == SafeArea {
    public var top: Layout<NSLayoutYAxisAnchor> {
        let vc = base.viewController
        if #available(iOS 11.0, *) {
            return Layout(owner: vc.view, anchors: vc.view.safeAreaLayoutGuide.topAnchor, keyPaths: [
                \Extension<UIView>.top,
                \Extension<UILayoutGuide>.top,
                \Extension<UILayoutSupport>.top
            ])
        } else {
            return Layout(owner: vc.view, anchors: vc.topLayoutGuide.bottomAnchor, keyPaths: [
                \Extension<UIView>.top,
                \Extension<UILayoutGuide>.top,
                \Extension<UILayoutSupport>.top
            ])
        }
    }

    public var bottom: Layout<NSLayoutYAxisAnchor> {
        let vc = base.viewController
        if #available(iOS 11.0, *) {
            return Layout(owner: vc.view, anchors: vc.view.safeAreaLayoutGuide.bottomAnchor, keyPaths: [
                \Extension<UIView>.bottom,
                \Extension<UILayoutGuide>.bottom,
                \Extension<UILayoutSupport>.bottom
            ])
        } else {
            return Layout(owner: vc.view, anchors: vc.bottomLayoutGuide.topAnchor, keyPaths: [
                \Extension<UIView>.bottom,
                \Extension<UILayoutGuide>.bottom,
                \Extension<UILayoutSupport>.bottom
            ])
        }
    }
}

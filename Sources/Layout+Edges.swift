//
//  Layout+Edges.swift
//  AutolayoutHelper
//
//  Created by 林 達也 on 2017/06/16.
//  Copyright © 2017年 sora0077 All rights reserved.
//

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
    import struct UIKit.UIEdgeInsets
    public typealias EdgeInsets = UIEdgeInsets
#elseif os(macOS)
    import struct AppKit.NSEdgeInsets
    public typealias EdgeInsets = NSEdgeInsets
#endif

// MARK: - (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)
public extension Layout where Anchors == (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor) {
    @discardableResult
    func equal(to other: Layout<Anchors>,
               constant: CGFloat = 0,
               priority: LayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return (
            YLayout(anchors: anchors.top).equal(
                to: YLayout(anchors: other.anchors.top),
                constant: constant,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.left).equal(
                to: XLayout(anchors: other.anchors.left),
                constant: constant,
                priority: priority,
                file: file, line: line),
            YLayout(anchors: anchors.bottom).equal(
                to: YLayout(anchors: other.anchors.bottom),
                constant: -constant,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.right).equal(
                to: XLayout(anchors: other.anchors.right),
                constant: -constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout,
                            constant: CGFloat = 0,
                            priority: LayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return (
            YLayout(anchors: anchors.top).greaterThanOrEqual(
                to: YLayout(anchors: other.anchors.top),
                constant: constant,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.left).greaterThanOrEqual(
                to: XLayout(anchors: other.anchors.left),
                constant: constant,
                priority: priority,
                file: file, line: line),
            YLayout(anchors: anchors.bottom).greaterThanOrEqual(
                to: YLayout(anchors: other.anchors.bottom),
                constant: -constant,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.right).greaterThanOrEqual(
                to: XLayout(anchors: other.anchors.right),
                constant: -constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout,
                         constant: CGFloat = 0,
                         priority: LayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return (
            YLayout(anchors: anchors.top).lessThanOrEqual(
                to: YLayout(anchors: other.anchors.top),
                constant: constant,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.left).lessThanOrEqual(
                to: XLayout(anchors: other.anchors.left),
                constant: constant,
                priority: priority,
                file: file, line: line),
            YLayout(anchors: anchors.bottom).lessThanOrEqual(
                to: YLayout(anchors: other.anchors.bottom),
                constant: -constant,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.right).lessThanOrEqual(
                to: XLayout(anchors: other.anchors.right),
                constant: -constant,
                priority: priority,
                file: file, line: line)
        )
    }
}

// MARK: additional support for (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)
public extension Layout where Anchors == (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor) {
    @discardableResult
    func equal(to other: Layout<Anchors>,
               insets: EdgeInsets,
               priority: LayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return (
            YLayout(anchors: anchors.top).equal(
                to: YLayout(anchors: other.anchors.top),
                constant: insets.top,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.left).equal(
                to: XLayout(anchors: other.anchors.left),
                constant: insets.left,
                priority: priority,
                file: file, line: line),
            YLayout(anchors: anchors.bottom).equal(
                to: YLayout(anchors: other.anchors.bottom),
                constant: -insets.bottom,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.right).equal(
                to: XLayout(anchors: other.anchors.right),
                constant: -insets.right,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func equal(to other: Layout<Anchors>,
               insets: (x: CGFloat, y: CGFloat),
               priority: LayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return (
            YLayout(anchors: anchors.top).equal(
                to: YLayout(anchors: other.anchors.top),
                constant: insets.y,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.left).equal(
                to: XLayout(anchors: other.anchors.left),
                constant: insets.x,
                priority: priority,
                file: file, line: line),
            YLayout(anchors: anchors.bottom).equal(
                to: YLayout(anchors: other.anchors.bottom),
                constant: -insets.y,
                priority: priority,
                file: file, line: line),
            XLayout(anchors: anchors.right).equal(
                to: XLayout(anchors: other.anchors.right),
                constant: -insets.x,
                priority: priority,
                file: file, line: line)
        )
    }
}

//
//  Layout+Edges.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/18.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
    import struct UIKit.UIEdgeInsets
    public typealias EdgeInsets = UIEdgeInsets
#elseif os(macOS)
    import struct AppKit.NSEdgeInsets
    public typealias EdgeInsets = NSEdgeInsets

    extension EdgeInsets {
        static let zero = NSEdgeInsetsZero
    }
#endif

private extension EdgeInsets {
    init(_ value: CGFloat) {
        self.init(top: value, left: value, bottom: value, right: value)
    }
    init(x: CGFloat, y: CGFloat) {
        self.init(top: y, left: x, bottom: y, right: x)
    }
}

private typealias XLayout = Layout<NSLayoutXAxisAnchor>
private typealias YLayout = Layout<NSLayoutYAxisAnchor>

// MARK: - (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)
public extension Layout where Anchors == (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor) {
    @discardableResult
    func equal(to other: Layout,
               _ insets: EdgeInsets = .zero,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return (
            YLayout(owner: owner, anchors: anchors.top).equal(
                to: YLayout(owner: other.owner, anchors: other.anchors.top),
                constant: insets.top,
                priority: priority,
                file: file, line: line),
            XLayout(owner: owner, anchors: anchors.left).equal(
                to: XLayout(owner: other.owner, anchors: other.anchors.left),
                constant: insets.left,
                priority: priority,
                file: file, line: line),
            YLayout(owner: owner, anchors: anchors.bottom).equal(
                to: YLayout(owner: other.owner, anchors: other.anchors.bottom),
                constant: -insets.right,
                priority: priority,
                file: file, line: line),
            XLayout(owner: owner, anchors: anchors.right).equal(
                to: XLayout(owner: other.owner, anchors: other.anchors.right),
                constant: -insets.bottom,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout,
                            _ insets: EdgeInsets = .zero,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return (
            YLayout(owner: owner, anchors: anchors.top).lessThanOrEqual(
                to: YLayout(owner: other.owner, anchors: other.anchors.top),
                constant: insets.top,
                priority: priority,
                file: file, line: line),
            XLayout(owner: owner, anchors: anchors.left).lessThanOrEqual(
                to: XLayout(owner: other.owner, anchors: other.anchors.left),
                constant: insets.left,
                priority: priority,
                file: file, line: line),
            YLayout(owner: owner, anchors: anchors.bottom).greaterThanOrEqual(
                to: YLayout(owner: other.owner, anchors: other.anchors.bottom),
                constant: -insets.right,
                priority: priority,
                file: file, line: line),
            XLayout(owner: owner, anchors: anchors.right).greaterThanOrEqual(
                to: XLayout(owner: other.owner, anchors: other.anchors.right),
                constant: -insets.bottom,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout,
                         _ insets: EdgeInsets = .zero,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return (
            YLayout(owner: owner, anchors: anchors.top).greaterThanOrEqual(
                to: YLayout(owner: other.owner, anchors: other.anchors.top),
                constant: insets.top,
                priority: priority,
                file: file, line: line),
            XLayout(owner: owner, anchors: anchors.left).greaterThanOrEqual(
                to: XLayout(owner: other.owner, anchors: other.anchors.left),
                constant: insets.left,
                priority: priority,
                file: file, line: line),
            YLayout(owner: owner, anchors: anchors.bottom).lessThanOrEqual(
                to: YLayout(owner: other.owner, anchors: other.anchors.bottom),
                constant: -insets.right,
                priority: priority,
                file: file, line: line),
            XLayout(owner: owner, anchors: anchors.right).lessThanOrEqual(
                to: XLayout(owner: other.owner, anchors: other.anchors.right),
                constant: -insets.bottom,
                priority: priority,
                file: file, line: line)
        )
    }
}

// MARK: additional support for (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor)
public extension Layout where Anchors == (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor) {
    @discardableResult
    func equal(to other: Layout,
               offset: CGFloat,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return equal(to: other, EdgeInsets(-offset), priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout,
                            offset: CGFloat,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other, EdgeInsets(-offset), priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout,
                         offset: CGFloat,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return lessThanOrEqual(to: other, EdgeInsets(-offset), priority: priority, file: file, line: line)
    }

    @discardableResult
    func equal(to other: Layout,
               offset: (dx: CGFloat, dy: CGFloat),
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return equal(to: other, EdgeInsets(x: -offset.dx, y: -offset.dy), priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout,
                            offset: (dx: CGFloat, dy: CGFloat),
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other, EdgeInsets(x: -offset.dx, y: -offset.dy), priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout,
                         offset: (dx: CGFloat, dy: CGFloat),
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return lessThanOrEqual(to: other, EdgeInsets(x: -offset.dx, y: -offset.dy), priority: priority, file: file, line: line)
    }
}

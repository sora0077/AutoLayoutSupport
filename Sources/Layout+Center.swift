//
//  Layout+Center.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/18.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

private typealias XLayout = Layout<NSLayoutXAxisAnchor>
private typealias YLayout = Layout<NSLayoutYAxisAnchor>

// MARK: - (x: NSLayoutXAxisAnchor, y: NSLayoutYAxisAnchor)
public extension Layout where Anchors == (x: NSLayoutXAxisAnchor, y: NSLayoutYAxisAnchor) {
    @discardableResult
    func equal(to other: Layout,
               constant: CGFloat = 0,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            XLayout(owner: owner, anchors: anchors.x).equal(
                to: XLayout(owner: other.owner, anchors: other.anchors.x),
                constant: constant,
                priority: priority,
                file: file, line: line),
            YLayout(owner: owner, anchors: anchors.y).equal(
                to: YLayout(owner: other.owner, anchors: other.anchors.y),
                constant: constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout,
                            constant: CGFloat = 0,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            XLayout(owner: owner, anchors: anchors.x).greaterThanOrEqual(
                to: XLayout(owner: other.owner, anchors: other.anchors.x),
                constant: constant,
                priority: priority,
                file: file, line: line),
            YLayout(owner: owner, anchors: anchors.y).greaterThanOrEqual(
                to: YLayout(owner: other.owner, anchors: other.anchors.y),
                constant: constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout,
                         constant: CGFloat = 0,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            XLayout(owner: owner, anchors: anchors.x).lessThanOrEqual(
                to: XLayout(owner: other.owner, anchors: other.anchors.x),
                constant: constant,
                priority: priority,
                file: file, line: line),
            YLayout(owner: owner, anchors: anchors.y).lessThanOrEqual(
                to: YLayout(owner: other.owner, anchors: other.anchors.y),
                constant: constant,
                file: file, line: line)
        )
    }
}

//
//  Layout.swift
//  AutolayoutHelper
//
//  Created by 林 達也 on 2017/06/16.
//  Copyright © 2017年 sora0077 All rights reserved.
//

import Foundation

public struct Layout<Anchors> {
    typealias XLayout = Layout<NSLayoutXAxisAnchor>
    typealias YLayout = Layout<NSLayoutYAxisAnchor>
    typealias DimensionLayout = Layout<NSLayoutDimension>
    let anchors: Anchors
}

// MARK: - NSLayoutXAxisAnchor
public extension Layout where Anchors == NSLayoutXAxisAnchor {
    @discardableResult
    func equal(to other: Layout, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(equalTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(greaterThanOrEqualTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(lessThanOrEqualTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }
}

// MARK: - NSLayoutYAxisAnchor
public extension Layout where Anchors == NSLayoutYAxisAnchor {
    @discardableResult
    func equal(to other: Layout, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(equalTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(greaterThanOrEqualTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(lessThanOrEqualTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }
}

// MARK: - NSLayoutDimension
public extension Layout where Anchors == NSLayoutDimension {
    @discardableResult
    func equal(to other: Layout, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line
        ) -> NSLayoutConstraint {
        let c = anchors.constraint(equalTo: other.anchors, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func equal(to constant: CGFloat, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(equalToConstant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line
        ) -> NSLayoutConstraint {
        let c = anchors.constraint(greaterThanOrEqualTo: other.anchors, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to constant: CGFloat, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(greaterThanOrEqualToConstant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line
        ) -> NSLayoutConstraint {
        let c = anchors.constraint(lessThanOrEqualTo: other.anchors, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to constant: CGFloat, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(lessThanOrEqualToConstant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }
}

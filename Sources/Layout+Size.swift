//
//  Layout+Size.swift
//  AutolayoutHelper
//
//  Created by 林 達也 on 2017/06/16.
//  Copyright © 2017年 sora0077 All rights reserved.
//

import Foundation

// MARK: - (width: NSLayoutDimension, height: NSLayoutDimension)
public extension Layout where Anchors == (width: NSLayoutDimension, height: NSLayoutDimension) {
    @discardableResult
    func equal(to other: Layout,
               multiplier: CGFloat = 1,
               constant: CGFloat = 0,
               priority: LayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(anchors: anchors.width).equal(
                to: DimensionLayout(anchors: other.anchors.width),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line),
            DimensionLayout(anchors: anchors.height).equal(
                to: DimensionLayout(anchors: other.anchors.height),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func equal(to constant: CGFloat,
               priority: LayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(anchors: anchors.width).equal(to: constant, priority: priority, file: file, line: line),
            DimensionLayout(anchors: anchors.height).equal(to: constant, priority: priority, file: file, line: line)
        )
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout,
                            multiplier: CGFloat = 1,
                            constant: CGFloat = 0,
                            priority: LayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(anchors: anchors.width).greaterThanOrEqual(
                to: DimensionLayout(anchors: other.anchors.width),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line),
            DimensionLayout(anchors: anchors.height).greaterThanOrEqual(
                to: DimensionLayout(anchors: other.anchors.height),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func greaterThanOrEqual(to constant: CGFloat,
                            priority: LayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(anchors: anchors.width).greaterThanOrEqual(to: constant, priority: priority, file: file, line: line),
            DimensionLayout(anchors: anchors.height).greaterThanOrEqual(to: constant, priority: priority, file: file, line: line)
        )
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout,
                         multiplier: CGFloat = 1,
                         constant: CGFloat = 0,
                         priority: LayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(anchors: anchors.width).lessThanOrEqual(
                to: DimensionLayout(anchors: other.anchors.width),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line),
            DimensionLayout(anchors: anchors.height).lessThanOrEqual(
                to: DimensionLayout(anchors: other.anchors.height),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func lessThanOrEqual(to constant: CGFloat,
                         priority: LayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(anchors: anchors.width).lessThanOrEqual(to: constant, priority: priority, file: file, line: line),
            DimensionLayout(anchors: anchors.height).lessThanOrEqual(to: constant, priority: priority, file: file, line: line)
        )
    }
}

// MARK: additional support for (width: NSLayoutDimension, height: NSLayoutDimension)
public extension Layout where Anchors == (width: NSLayoutDimension, height: NSLayoutDimension) {
    @discardableResult
    func equal(to other: Layout<Anchors>,
               multiplier: CGFloat = 1,
               insets: (x: CGFloat, y: CGFloat),
               priority: LayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(anchors: anchors.width).equal(
                to: DimensionLayout(anchors: other.anchors.width),
                multiplier: multiplier,
                constant: -insets.x,
                priority: priority,
                file: file, line: line),
            DimensionLayout(anchors: anchors.height).equal(
                to: DimensionLayout(anchors: other.anchors.height),
                multiplier: multiplier,
                constant: -insets.y,
                priority: priority,
                file: file, line: line)
        )
    }
}

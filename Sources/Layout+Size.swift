//
//  Layout+Size.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/18.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

private typealias DimensionLayout = Layout<NSLayoutDimension>

// MARK: - (width: NSLayoutDimension, height: NSLayoutDimension)
public extension Layout where Anchors == (width: NSLayoutDimension, height: NSLayoutDimension) {
    @discardableResult
    func equal(to other: Layout,
               multiplier: CGFloat = 1,
               constant: CGFloat = 0,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width).equal(
                to: DimensionLayout(owner: other.owner, anchors: other.anchors.width),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height).equal(
                to: DimensionLayout(owner: other.owner, anchors: other.anchors.height),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func equal(to constant: CGFloat,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width)
                .equal(to: constant, priority: priority, file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height)
                .equal(to: constant, priority: priority, file: file, line: line)
        )
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout,
                            multiplier: CGFloat = 1,
                            constant: CGFloat = 0,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width).greaterThanOrEqual(
                to: DimensionLayout(owner: other.owner, anchors: other.anchors.width),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height).greaterThanOrEqual(
                to: DimensionLayout(owner: other.owner, anchors: other.anchors.height),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func greaterThanOrEqual(to constant: CGFloat,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width)
                .greaterThanOrEqual(to: constant, priority: priority, file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height)
                .greaterThanOrEqual(to: constant, priority: priority, file: file, line: line)
        )
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout,
                         multiplier: CGFloat = 1,
                         constant: CGFloat = 0,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width).lessThanOrEqual(
                to: DimensionLayout(owner: other.owner, anchors: other.anchors.width),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height).lessThanOrEqual(
                to: DimensionLayout(owner: other.owner, anchors: other.anchors.height),
                multiplier: multiplier,
                constant: constant,
                priority: priority,
                file: file, line: line)
        )
    }

    @discardableResult
    func lessThanOrEqual(to constant: CGFloat,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width)
                .lessThanOrEqual(to: constant, priority: priority, file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height)
                .lessThanOrEqual(to: constant, priority: priority, file: file, line: line)
        )
    }
}

// MARK: additional support for (width: NSLayoutDimension, height: NSLayoutDimension)
public extension Layout where Anchors == (width: NSLayoutDimension, height: NSLayoutDimension) {
    @discardableResult
    func equal(to size: CGSize,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width)
                .equal(to: size.width, priority: priority, file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height)
                .equal(to: size.height, priority: priority, file: file, line: line)
        )
    }

    @discardableResult
    func greaterThanOrEqual(to size: CGSize,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width)
                .greaterThanOrEqual(to: size.width, priority: priority, file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height)
                .greaterThanOrEqual(to: size.height, priority: priority, file: file, line: line)
        )
    }

    @discardableResult
    func lessThanOrEqual(to size: CGSize,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width)
                .lessThanOrEqual(to: size.width, priority: priority, file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height)
                .lessThanOrEqual(to: size.height, priority: priority, file: file, line: line)
        )
    }

    @discardableResult
    func equal(to other: Layout<Anchors>,
               multiplier: CGFloat = 1,
               constant: (width: CGFloat, height: CGFloat),
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            DimensionLayout(owner: owner, anchors: anchors.width).equal(
                to: DimensionLayout(owner: other.owner, anchors: other.anchors.width),
                multiplier: multiplier,
                constant: constant.width,
                priority: priority,
                file: file, line: line),
            DimensionLayout(owner: owner, anchors: anchors.height).equal(
                to: DimensionLayout(owner: other.owner, anchors: other.anchors.height),
                multiplier: multiplier,
                constant: constant.height,
                priority: priority,
                file: file, line: line)
        )
    }
}

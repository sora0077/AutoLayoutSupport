//
//  Layout+Single.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/18.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

// MARK: - NSLayoutXAxisAnchor
public extension Layout where Anchors == NSLayoutXAxisAnchor {
    @discardableResult
    func equal(to other: Layout, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(equalTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(greaterThanOrEqualTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(lessThanOrEqualTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    //
    // MARK: - system spacing
    @available(iOS 11.0, *)
    @discardableResult
    func equal(toSystemSpacingAfter other: Layout, multiplier: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintEqualToSystemSpacingAfter(other.anchors, multiplier: multiplier)
        return activate(c, priority: priority, file: file, line: line)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func greaterThanOrEqual(toSystemSpacingAfter other: Layout, multiplier: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintGreaterThanOrEqualToSystemSpacingAfter(other.anchors, multiplier: multiplier)
        return activate(c, priority: priority, file: file, line: line)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func lessThanOrEqual(toSystemSpacingAfter other: Layout, multiplier: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintLessThanOrEqualToSystemSpacingAfter(other.anchors, multiplier: multiplier)
        return activate(c, priority: priority, file: file, line: line)
    }
}

// MARK: - NSLayoutYAxisAnchor
public extension Layout where Anchors == NSLayoutYAxisAnchor {
    @discardableResult
    func equal(to other: Layout, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(equalTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(greaterThanOrEqualTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(lessThanOrEqualTo: other.anchors, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    //
    // MARK: - system spacing
    @available(iOS 11.0, *)
    @discardableResult
    func equal(toSystemSpacingBelow other: Layout, multiplier: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintEqualToSystemSpacingBelow(other.anchors, multiplier: multiplier)
        return activate(c, priority: priority, file: file, line: line)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func greaterThanOrEqual(toSystemSpacingBelow other: Layout, multiplier: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintGreaterThanOrEqualToSystemSpacingBelow(other.anchors, multiplier: multiplier)
        return activate(c, priority: priority, file: file, line: line)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func lessThanOrEqual(toSystemSpacingBelow other: Layout, multiplier: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintLessThanOrEqualToSystemSpacingBelow(other.anchors, multiplier: multiplier)
        return activate(c, priority: priority, file: file, line: line)
    }
}

// MARK: - NSLayoutDimension
public extension Layout where Anchors == NSLayoutDimension {
    @discardableResult
    func equal(to other: Layout, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(equalTo: other.anchors, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func equal(to constant: CGFloat, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(equalToConstant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(greaterThanOrEqualTo: other.anchors, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    //
    // MARK: - constant
    @discardableResult
    func greaterThanOrEqual(to constant: CGFloat, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(greaterThanOrEqualToConstant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(lessThanOrEqualTo: other.anchors, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to constant: CGFloat, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraint(lessThanOrEqualToConstant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }
}

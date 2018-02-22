// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layout+Size.generated.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/18.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

// MARK: - (width: NSLayoutDimension, height: NSLayoutDimension) for UILayoutGuide shortcut
public extension Layout where Anchors == (width: NSLayoutDimension, height: NSLayoutDimension) {
    @discardableResult
    func equal(to other: UILayoutGuide,
               multiplier: CGFloat = 1,
               constant: CGSize = .zero,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return equal(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                     priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide,
                            multiplier: CGFloat = 1,
                            constant: CGSize = .zero,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                                  priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide,
                         multiplier: CGFloat = 1,
                         constant: CGSize = .zero,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                               priority: priority, file: file, line: line)
    }

    // MARK: -
    @discardableResult
    func equal(to other: UILayoutGuide,
               multiplier: CGFloat = 1,
               constant: CGFloat,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return equal(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                     priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide,
                            multiplier: CGFloat = 1,
                            constant: CGFloat,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                                  priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide,
                         multiplier: CGFloat = 1,
                         constant: CGFloat,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                               priority: priority, file: file, line: line)
    }
}
// MARK: - (width: NSLayoutDimension, height: NSLayoutDimension) for UIView shortcut
public extension Layout where Anchors == (width: NSLayoutDimension, height: NSLayoutDimension) {
    @discardableResult
    func equal(to other: UIView,
               multiplier: CGFloat = 1,
               constant: CGSize = .zero,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return equal(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                     priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView,
                            multiplier: CGFloat = 1,
                            constant: CGSize = .zero,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                                  priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView,
                         multiplier: CGFloat = 1,
                         constant: CGSize = .zero,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                               priority: priority, file: file, line: line)
    }

    // MARK: -
    @discardableResult
    func equal(to other: UIView,
               multiplier: CGFloat = 1,
               constant: CGFloat,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return equal(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                     priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView,
                            multiplier: CGFloat = 1,
                            constant: CGFloat,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                                  priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView,
                         multiplier: CGFloat = 1,
                         constant: CGFloat,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.size, multiplier: multiplier, constant: constant,
                               priority: priority, file: file, line: line)
    }
}

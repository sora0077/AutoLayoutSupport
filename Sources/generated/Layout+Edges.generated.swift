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

// MARK: - (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor) for UILayoutGuide shortcut
public extension Layout where Anchors == (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor) {
    @discardableResult
    func equal(to other: UILayoutGuide,
               _ insets: EdgeInsets = .zero,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return equal(to: other.autolayout.edges, insets, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide,
                            _ insets: EdgeInsets = .zero,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.edges, insets, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide,
                         _ insets: EdgeInsets = .zero,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.edges, insets, priority: priority, file: file, line: line)
    }

    //
    //
    // MARK: -
    @discardableResult
    func equal(to other: UILayoutGuide,
               offset: CGFloat,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return equal(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide,
                            offset: CGFloat,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide,
                         offset: CGFloat,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    //
    //
    // MARK: -
    @discardableResult
    func equal(to other: UILayoutGuide,
               offset: (dx: CGFloat, dy: CGFloat),
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return equal(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide,
                            offset: (dx: CGFloat, dy: CGFloat),
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide,
                         offset: (dx: CGFloat, dy: CGFloat),
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }
}
// MARK: - (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor) for UIView shortcut
public extension Layout where Anchors == (top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, right: NSLayoutXAxisAnchor) {
    @discardableResult
    func equal(to other: UIView,
               _ insets: EdgeInsets = .zero,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return equal(to: other.autolayout.edges, insets, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView,
                            _ insets: EdgeInsets = .zero,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.edges, insets, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView,
                         _ insets: EdgeInsets = .zero,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.edges, insets, priority: priority, file: file, line: line)
    }

    //
    //
    // MARK: -
    @discardableResult
    func equal(to other: UIView,
               offset: CGFloat,
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return equal(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView,
                            offset: CGFloat,
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView,
                         offset: CGFloat,
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    //
    //
    // MARK: -
    @discardableResult
    func equal(to other: UIView,
               offset: (dx: CGFloat, dy: CGFloat),
               priority: UILayoutPriority = .required,
               file: StaticString = #file,
               line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return equal(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView,
                            offset: (dx: CGFloat, dy: CGFloat),
                            priority: UILayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return greaterThanOrEqual(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView,
                         offset: (dx: CGFloat, dy: CGFloat),
                         priority: UILayoutPriority = .required,
                         file: StaticString = #file,
                         line: UInt = #line
        ) -> (top: NSLayoutConstraint, left: NSLayoutConstraint, bottom: NSLayoutConstraint, right: NSLayoutConstraint) {
        return lessThanOrEqual(to: other.autolayout.edges, offset: offset, priority: priority, file: file, line: line)
    }
}

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
}

// MARK: - NSLayoutDimension
public extension Layout where Anchors == NSLayoutDimension {
    @discardableResult
    func content(hugging: UILayoutPriority? = nil, compressionResistance: UILayoutPriority? = nil) -> Layout<Anchors> {
        guard let axis = axis else { return self }
        if let hugging = hugging {
            owner?.setContentHuggingPriority(hugging, for: axis)
        }
        if let compressionResistance = compressionResistance {
            owner?.setContentCompressionResistancePriority(compressionResistance, for: axis)
        }
        return self
    }

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

//
//
// MARK: - system spacing
public enum SystemSpacing {
    case level(CGFloat)

    fileprivate var value: CGFloat {
        switch self {
        case .level(let value): return value
        }
    }
}

public extension Layout where Anchors == NSLayoutXAxisAnchor {
    @available(iOS 11.0, *)
    @discardableResult
    func equal(to other: Layout, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintEqualToSystemSpacingAfter(other.anchors, multiplier: systemSpacing.value)
        return activate(c, priority: priority, file: file, line: line)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func greaterThanOrEqual(to other: Layout, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintGreaterThanOrEqualToSystemSpacingAfter(other.anchors, multiplier: systemSpacing.value)
        return activate(c, priority: priority, file: file, line: line)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func lessThanOrEqual(to other: Layout, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintLessThanOrEqualToSystemSpacingAfter(other.anchors, multiplier: systemSpacing.value)
        return activate(c, priority: priority, file: file, line: line)
    }
}

public extension Layout where Anchors == NSLayoutYAxisAnchor {
    @available(iOS 11.0, *)
    @discardableResult
    func equal(to other: Layout, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintEqualToSystemSpacingBelow(other.anchors, multiplier: systemSpacing.value)
        return activate(c, priority: priority, file: file, line: line)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func greaterThanOrEqual(to other: Layout, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintGreaterThanOrEqualToSystemSpacingBelow(other.anchors, multiplier: systemSpacing.value)
        return activate(c, priority: priority, file: file, line: line)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func lessThanOrEqual(to other: Layout, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        let c = anchors.constraintLessThanOrEqualToSystemSpacingBelow(other.anchors, multiplier: systemSpacing.value)
        return activate(c, priority: priority, file: file, line: line)
    }
}

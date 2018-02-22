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

// MARK: - NSLayoutXAxisAnchor specialized with UILayoutSupport
public extension Layout where Anchors == NSLayoutXAxisAnchor {
    @discardableResult
    func equal(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(equalTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(lessThanOrEqualTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }
}

// MARK: - NSLayoutYAxisAnchor
public extension Layout where Anchors == NSLayoutYAxisAnchor {
    @discardableResult
    func equal(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(equalTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(lessThanOrEqualTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }
}

// MARK: - NSLayoutDimension
public extension Layout where Anchors == NSLayoutDimension {
    @discardableResult
    func equal(to other: UILayoutSupport, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutSupport, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutSupport, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }
}

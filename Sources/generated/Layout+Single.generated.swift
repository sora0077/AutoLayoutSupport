// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layout+Single.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/18.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

// MARK: - NSLayoutXAxisAnchor specialized with UILayoutGuide
public extension Layout where Anchors == NSLayoutXAxisAnchor {
    @discardableResult
    func equal(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(equalTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
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
    func equal(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(equalTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
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
    func equal(to other: UILayoutGuide, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }
}
// MARK: - NSLayoutXAxisAnchor specialized with UIView
public extension Layout where Anchors == NSLayoutXAxisAnchor {
    @discardableResult
    func equal(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(equalTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
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
    func equal(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(equalTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
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
    func equal(to other: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let anchor = keyPaths.lazy.flatMap({ other[keyPath: $0] as? Anchors }).first else {
            fatalError()
        }
        let c = anchors.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        return activate(c, priority: priority, file: file, line: line)
    }
}

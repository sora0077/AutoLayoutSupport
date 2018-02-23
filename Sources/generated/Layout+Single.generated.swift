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

//
//
//
// MARK: - NSLayoutXAxisAnchor specialized with UIView
public extension Layout where Anchors == NSLayoutXAxisAnchor {
    @discardableResult
    func equal(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    //
    // MARK: - system spacing
    @available(iOS 11.0, *)
    @discardableResult
    func equal(to other: UIView, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func greaterThanOrEqual(to other: UIView, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func lessThanOrEqual(to other: UIView, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }
}

//
//
//
// MARK: - NSLayoutXAxisAnchor specialized with UILayoutGuide
public extension Layout where Anchors == NSLayoutXAxisAnchor {
    @discardableResult
    func equal(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    //
    // MARK: - system spacing
    @available(iOS 11.0, *)
    @discardableResult
    func equal(to other: UILayoutGuide, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func greaterThanOrEqual(to other: UILayoutGuide, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func lessThanOrEqual(to other: UILayoutGuide, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }
}

//
//
//
// MARK: - NSLayoutXAxisAnchor specialized with UILayoutSupport
public extension Layout where Anchors == NSLayoutXAxisAnchor {
    @discardableResult
    func equal(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    //
    // MARK: - system spacing
    @available(iOS 11.0, *)
    @discardableResult
    func equal(to other: UILayoutSupport, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func greaterThanOrEqual(to other: UILayoutSupport, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func lessThanOrEqual(to other: UILayoutSupport, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }
}

//
//
//
// MARK: - NSLayoutYAxisAnchor specialized with UIView
public extension Layout where Anchors == NSLayoutYAxisAnchor {
    @discardableResult
    func equal(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    //
    // MARK: - system spacing
    @available(iOS 11.0, *)
    @discardableResult
    func equal(to other: UIView, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func greaterThanOrEqual(to other: UIView, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func lessThanOrEqual(to other: UIView, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }
}

//
//
//
// MARK: - NSLayoutYAxisAnchor specialized with UILayoutGuide
public extension Layout where Anchors == NSLayoutYAxisAnchor {
    @discardableResult
    func equal(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    //
    // MARK: - system spacing
    @available(iOS 11.0, *)
    @discardableResult
    func equal(to other: UILayoutGuide, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func greaterThanOrEqual(to other: UILayoutGuide, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func lessThanOrEqual(to other: UILayoutGuide, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }
}

//
//
//
// MARK: - NSLayoutYAxisAnchor specialized with UILayoutSupport
public extension Layout where Anchors == NSLayoutYAxisAnchor {
    @discardableResult
    func equal(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    //
    // MARK: - system spacing
    @available(iOS 11.0, *)
    @discardableResult
    func equal(to other: UILayoutSupport, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func greaterThanOrEqual(to other: UILayoutSupport, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }

    @discardableResult
    @available(iOS 11.0, *)
    func lessThanOrEqual(to other: UILayoutSupport, systemSpacing: SystemSpacing, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, systemSpacing: systemSpacing, priority: priority, file: file, line: line)
    }
}

//
//
//
// MARK: - NSLayoutDimension specialized with UIView
public extension Layout where Anchors == NSLayoutDimension {
    @discardableResult
    func equal(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UIView, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

}

//
//
//
// MARK: - NSLayoutDimension specialized with UILayoutGuide
public extension Layout where Anchors == NSLayoutDimension {
    @discardableResult
    func equal(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutGuide, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

}

//
//
//
// MARK: - NSLayoutDimension specialized with UILayoutSupport
public extension Layout where Anchors == NSLayoutDimension {
    @discardableResult
    func equal(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
               file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return equal(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func greaterThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                            file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return greaterThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

    @discardableResult
    func lessThanOrEqual(to other: UILayoutSupport, constant: CGFloat = 0, priority: UILayoutPriority = .required,
                         file: StaticString = #file, line: UInt = #line) -> NSLayoutConstraint {
        guard let other = keyPaths.lazy.flatMap({ other.autolayout[keyPath: $0] as? Layout<Anchors> }).first else {
            fatalError()
        }
        return lessThanOrEqual(to: other, constant: constant, priority: priority, file: file, line: line)
    }

}

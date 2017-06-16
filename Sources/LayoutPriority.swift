//
//  LayoutPriority.swift
//  AutolayoutHelper
//
//  Created by 林 達也 on 2017/06/16.
//  Copyright © 2017年 sora0077 All rights reserved.
//

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
    import typealias UIKit.UILayoutPriority
    public typealias SystemLayoutPriority = UILayoutPriority
#elseif os(macOS)
    import typealias AppKit.NSLayoutPriority
    public typealias SystemLayoutPriority = NSLayoutPriority
#endif

public enum LayoutPriority {
    case required
    case defaultHigh
    case defaultLow
    case fittingSizeLevel
    case value(SystemLayoutPriority)

    var value: SystemLayoutPriority {
        #if os(iOS) || os(tvOS) || os(watchOS)
            switch self {
            case .required: return UILayoutPriorityRequired
            case .defaultHigh: return UILayoutPriorityDefaultHigh
            case .defaultLow: return UILayoutPriorityDefaultLow
            case .fittingSizeLevel: return UILayoutPriorityFittingSizeLevel
            case .value(let value): return value
            }
        #elseif os(macOS)
            switch self {
            case .required: return NSLayoutPriorityRequired
            case .defaultHigh: return NSLayoutPriorityDefaultHigh
            case .defaultLow: return NSLayoutPriorityDefaultLow
            case .fittingSizeLevel: return NSLayoutPriorityFittingSizeLevel
            case .value(let value): return value
            }
        #endif
    }
}

extension LayoutPriority: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: UInt) {
        self = .value(SystemLayoutPriority(value))
    }
}

extension LayoutPriority: ExpressibleByFloatLiteral {
    public init(floatLiteral value: SystemLayoutPriority) {
        self = .value(value)
    }
}

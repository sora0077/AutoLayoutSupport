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
#elseif os(macOS)
    import typealias AppKit.NSLayoutPriority
#endif

public enum LayoutPriority {
    case required
    case defaultHigh
    case defaultLow
    case fittingSizeLevel
    case custom(Float)

    var value: Float {
        #if os(iOS) || os(tvOS) || os(watchOS)
            switch self {
            case .required: return UILayoutPriorityRequired
            case .defaultHigh: return UILayoutPriorityDefaultHigh
            case .defaultLow: return UILayoutPriorityDefaultLow
            case .fittingSizeLevel: return UILayoutPriorityFittingSizeLevel
            case .custom(let value): return value
            }
        #elseif os(macOS)
            switch self {
            case .required: return NSLayoutPriorityRequired
            case .defaultHigh: return NSLayoutPriorityDefaultHigh
            case .defaultLow: return NSLayoutPriorityDefaultLow
            case .fittingSizeLevel: return NSLayoutPriorityFittingSizeLevel
            case .custom(let value): return value
            }
        #endif
    }
}

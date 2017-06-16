//
//  Layout+Center.swift
//  AutolayoutHelper
//
//  Created by 林 達也 on 2017/06/16.
//  Copyright © 2017年 sora0077 All rights reserved.
//

import Foundation

// MARK: - (x: NSLayoutXAxisAnchor, y: NSLayoutYAxisAnchor)
public extension Layout where Anchors == (x: NSLayoutXAxisAnchor, y: NSLayoutYAxisAnchor) {
    @discardableResult
    func equal(to other: Layout, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line
        ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            XLayout(anchors: anchors.x).equal(to: XLayout(anchors: other.anchors.x), constant: constant, file: file, line: line),
            YLayout(anchors: anchors.y).equal(to: YLayout(anchors: other.anchors.y), constant: constant, file: file, line: line)
        )
    }

    @discardableResult
    func greaterThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line
        ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            XLayout(anchors: anchors.x).greaterThanOrEqual(to: XLayout(anchors: other.anchors.x), constant: constant, file: file, line: line),
            YLayout(anchors: anchors.y).greaterThanOrEqual(to: YLayout(anchors: other.anchors.y), constant: constant, file: file, line: line)
        )
    }

    @discardableResult
    func lessThanOrEqual(to other: Layout, constant: CGFloat = 0, priority: LayoutPriority = .required, file: StaticString = #file, line: UInt = #line
        ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            XLayout(anchors: anchors.x).lessThanOrEqual(to: XLayout(anchors: other.anchors.x), constant: constant, file: file, line: line),
            YLayout(anchors: anchors.y).lessThanOrEqual(to: YLayout(anchors: other.anchors.y), constant: constant, file: file, line: line)
        )
    }
}
